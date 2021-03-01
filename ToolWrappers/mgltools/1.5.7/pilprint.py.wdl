version 1.0

task Pilprintpy {
  input {
    Boolean? colour_printer_default
    Boolean? print_lpr_default
    String? same_p_use
    String files_dot_dot_dot
  }
  command <<<
    pilprint_py \
      ~{files_dot_dot_dot} \
      ~{if (colour_printer_default) then "-c" else ""} \
      ~{if (print_lpr_default) then "-p" else ""} \
      ~{if defined(same_p_use) then ("-P " +  '"' + same_p_use + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    colour_printer_default: "colour printer (default is monochrome)"
    print_lpr_default: "print via lpr (default is stdout)"
    same_p_use: "same as -p but use given printer"
    files_dot_dot_dot: ""
  }
  output {
    File out_stdout = stdout()
  }
}