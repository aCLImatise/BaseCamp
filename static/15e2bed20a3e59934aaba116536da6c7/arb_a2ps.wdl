version 1.0

task ArbA2ps {
  input {
    Boolean? one_page_sheet
    Boolean? twin_pages_sheet
    Boolean? nd_print_dont
    Boolean? fnum
    Boolean? h_str
    Boolean? print_landscape_mode
    Boolean? lnum
    Boolean? process_file_man
    Boolean? nn_number_number
    Boolean? print_portrait_mode
    Boolean? print_quiet_summary
    Boolean? ns_print_print
    Boolean? nb_print_dont
    Boolean? nb_force_dont
    Boolean? nc_allow_allow
    Boolean? fold_fold_lines
    Boolean? nh
    Boolean? i_file
    Boolean? ni_interpret_interpret
    String? p_printer
    Boolean? nr_restart_restart
    Boolean? t_num
    Boolean? nu
    Boolean? nv_visible_display
    Boolean? n_display_dont
  }
  command <<<
    arb_a2ps \
      ~{if (one_page_sheet) then "-1" else ""} \
      ~{if (twin_pages_sheet) then "-2" else ""} \
      ~{if (nd_print_dont) then "-d" else ""} \
      ~{if (fnum) then "-Fnum" else ""} \
      ~{if (h_str) then "-Hstr" else ""} \
      ~{if (print_landscape_mode) then "-l" else ""} \
      ~{if (lnum) then "-lnum" else ""} \
      ~{if (process_file_man) then "-m" else ""} \
      ~{if (nn_number_number) then "-n" else ""} \
      ~{if (print_portrait_mode) then "-p" else ""} \
      ~{if (print_quiet_summary) then "-q" else ""} \
      ~{if (ns_print_print) then "-s" else ""} \
      ~{if (nb_print_dont) then "-B" else ""} \
      ~{if (nb_force_dont) then "-b" else ""} \
      ~{if (nc_allow_allow) then "-c" else ""} \
      ~{if (fold_fold_lines) then "-f" else ""} \
      ~{if (nh) then "-nH" else ""} \
      ~{if (i_file) then "-Ifile" else ""} \
      ~{if (ni_interpret_interpret) then "-i" else ""} \
      ~{if defined(p_printer) then ("-Pprinter " +  '"' + p_printer + '"') else ""} \
      ~{if (nr_restart_restart) then "-r" else ""} \
      ~{if (t_num) then "-tnum" else ""} \
      ~{if (nu) then "-nu" else ""} \
      ~{if (nv_visible_display) then "-v" else ""} \
      ~{if (n_display_dont) then "-8" else ""}
  >>>
  parameter_meta {
    one_page_sheet: "one page per sheet"
    twin_pages_sheet: "TWIN PAGES per sheet"
    nd_print_dont: "-nd     print (DON'T PRINT) current date at the bottom"
    fnum: "font size, num is a float number"
    h_str: "use str like header title for subsequent files"
    print_landscape_mode: "print in LANDSCAPE mode"
    lnum: "use num lines per page"
    process_file_man: "process the file as a man"
    nn_number_number: "-nn     NUMBER (don't number) line files"
    print_portrait_mode: "print in portrait mode"
    print_quiet_summary: "print in quiet mode (no summary)"
    ns_print_print: "-ns     PRINT (don't print) surrounding borders"
    nb_print_dont: "-nB     print (DON'T PRINT) in bold font"
    nb_force_dont: "-nb     force (DON'T FORCE) binary printing"
    nc_allow_allow: "-nc     allow (DON'T ALLOW) two files on the same sheet"
    fold_fold_lines: "-nf     FOLD (don't fold) lines"
    nh: "don't print any header"
    i_file: "include this file as a2ps prologue"
    ni_interpret_interpret: "-ni     INTERPRET (don't interpret) tab, bs and ff chars"
    p_printer: "(don't send) directly to the printer\\n(with options '-l' and -Pprinter)"
    nr_restart_restart: "-nr     RESTART (don't restart) page number after each file"
    t_num: "set tab size to n"
    nu: "don't print a filename footer"
    nv_visible_display: "-nv     VISIBLE (blank) display of unprintable chars"
    n_display_dont: "-n8     display (DON'T DISPLAY) 8-bit chars"
  }
  output {
    File out_stdout = stdout()
  }
}