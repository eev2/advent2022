  integer s, c, smax, e, emax, ierr
  character cin*10
  smax = 0
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
    if (s .gt. smax) then
      print*, "New best found. Elf: ", e, " Old: ", smax, " New:", s
      emax = e
      smax = s
    end if
    if (ierr .ne. 0) exit elf
  end do elf
  print*, "elf = ", emax
  print*, "cal = ", smax
end program
