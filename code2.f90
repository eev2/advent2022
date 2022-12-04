  integer s, c, smax, e, ierr, s3(3), i, j
  character cin*10
  smax = 0
  s3 = 0
  e = 0
  ierr = 0
  elf: do
    e = e + 1
    s = 0
    cal: do
      read (*,'(a10)',iostat = ierr) cin
      print*, "input: ", cin
      if (len_trim(cin) .eq. 0) exit cal
      read(cin,*) c
      s = s + c
      if (ierr .ne. 0) exit cal
    end do cal
    print*, "sum: ", s
    i = count(s3 .lt. s)
    do j = 1, i
      s3(j) = s3(j+1)
    end do
    s3(i) = s
    smax = sum(s3)
    if (ierr .ne. 0) exit elf
  end do elf
  print*, "cal = ", smax
end program
