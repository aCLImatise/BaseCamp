version 1.0

task ArbHelpUseredit.sh {
  input {
    String help_file
    String start_vertical_line_end
  }
  command <<<
    arb_help_useredit.sh \
      ~{help_file} \
      ~{start_vertical_line_end}
  >>>
  parameter_meta {
    help_file: ""
    start_vertical_line_end: ""
  }
}