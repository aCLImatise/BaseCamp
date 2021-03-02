version 1.0

task ArbA2ps {
  input {
    Boolean? one_page_sheet
    Boolean? twin_pages_sheet
    Boolean? nd
    Boolean? fnum
    Boolean? h_str
    Boolean? print_landscape_mode
    Boolean? lnum
    Boolean? process_file_man
    Boolean? nn
    Boolean? print_portrait_mode
    Boolean? print_quiet_mode
    Boolean? ns
    Boolean? print_dont_print_bold
    Boolean? force_dont_force
    Boolean? nc
    Boolean? nf
    Boolean? nh
    Boolean? i_file
    Boolean? ni
    String? p_printer
    Boolean? nr
    Boolean? t_num
    Boolean? nu
    Boolean? nv
    Boolean? n_eight
  }
  command <<<
    arb_a2ps \
      ~{if (one_page_sheet) then "-1" else ""} \
      ~{if (twin_pages_sheet) then "-2" else ""} \
      ~{if (nd) then "-nd" else ""} \
      ~{if (fnum) then "-Fnum" else ""} \
      ~{if (h_str) then "-Hstr" else ""} \
      ~{if (print_landscape_mode) then "-l" else ""} \
      ~{if (lnum) then "-lnum" else ""} \
      ~{if (process_file_man) then "-m" else ""} \
      ~{if (nn) then "-nn" else ""} \
      ~{if (print_portrait_mode) then "-p" else ""} \
      ~{if (print_quiet_mode) then "-q" else ""} \
      ~{if (ns) then "-ns" else ""} \
      ~{if (print_dont_print_bold) then "-nB" else ""} \
      ~{if (force_dont_force) then "-nb" else ""} \
      ~{if (nc) then "-nc" else ""} \
      ~{if (nf) then "-nf" else ""} \
      ~{if (nh) then "-nH" else ""} \
      ~{if (i_file) then "-Ifile" else ""} \
      ~{if (ni) then "-ni" else ""} \
      ~{if defined(p_printer) then ("-Pprinter " +  '"' + p_printer + '"') else ""} \
      ~{if (nr) then "-nr" else ""} \
      ~{if (t_num) then "-tnum" else ""} \
      ~{if (nu) then "-nu" else ""} \
      ~{if (nv) then "-nv" else ""} \
      ~{if (n_eight) then "-n8" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    one_page_sheet: "one page per sheet"
    twin_pages_sheet: "TWIN PAGES per sheet"
    nd: "print (DON'T PRINT) current date at the bottom"
    fnum: "font size, num is a float number"
    h_str: "use str like header title for subsequent files"
    print_landscape_mode: "print in LANDSCAPE mode"
    lnum: "use num lines per page"
    process_file_man: "process the file as a man"
    nn: "NUMBER (don't number) line files"
    print_portrait_mode: "print in portrait mode"
    print_quiet_mode: "print in quiet mode (no summary)"
    ns: "PRINT (don't print) surrounding borders"
    print_dont_print_bold: "print (DON'T PRINT) in bold font"
    force_dont_force: "force (DON'T FORCE) binary printing"
    nc: "allow (DON'T ALLOW) two files on the same sheet"
    nf: "FOLD (don't fold) lines"
    nh: "don't print any header"
    i_file: "include this file as a2ps prologue"
    ni: "INTERPRET (don't interpret) tab, bs and ff chars"
    p_printer: "(don't send) directly to the printer\\n(with options '-l' and -Pprinter)"
    nr: "RESTART (don't restart) page number after each file"
    t_num: "set tab size to n"
    nu: "don't print a filename footer"
    nv: "VISIBLE (blank) display of unprintable chars"
    n_eight: "display (DON'T DISPLAY) 8-bit chars"
  }
  output {
    File out_stdout = stdout()
  }
}