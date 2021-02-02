version 1.0

task Fcontml {
  input {
    Boolean? datatype
    Boolean? out_gr_no
    Boolean? print_data
    File file
  }
  command <<<
    _fcontml \
      ~{file} \
      ~{if (datatype) then "-datatype" else ""} \
      ~{if (out_gr_no) then "-outgrno" else ""} \
      ~{if (print_data) then "-printdata" else ""}
  >>>
  parameter_meta {
    datatype: "menu       [g] Input type in infile (Values: g (Gene\\nfrequencies); i (Continuous characters))"
    out_gr_no: "integer    [0] Species number to use as outgroup\\n(Integer 0 or more)"
    print_data: "boolean    [N] Print data at start of run"
    file: "Additional (Optional) qualifiers (* if not always prompted):"
  }
  output {
    File out_stdout = stdout()
  }
}