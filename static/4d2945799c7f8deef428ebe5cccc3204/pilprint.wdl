version 1.0

task Pilprint.py {
  input {
    Boolean? colour_printer_default
    Boolean? print_lpr_default
    String? same_p_use
    File files_dot_dot_dot
  }
  command <<<
    pilprint.py \
      ~{files_dot_dot_dot} \
      ~{true="-c" false="" colour_printer_default} \
      ~{true="-p" false="" print_lpr_default} \
      ~{if defined(same_p_use) then ("-P " +  '"' + same_p_use + '"') else ""}
  >>>
  parameter_meta {
    colour_printer_default: "colour printer (default is monochrome)"
    print_lpr_default: "print via lpr (default is stdout)"
    same_p_use: "same as -p but use given printer"
    files_dot_dot_dot: ""
  }
}