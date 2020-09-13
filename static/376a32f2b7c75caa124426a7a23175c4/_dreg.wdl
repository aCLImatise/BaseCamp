version 1.0

task Dreg {
  input {
    String? r_format
  }
  command <<<
    _dreg \
      ~{if defined(r_format) then ("-rformat " +  '"' + r_format + '"') else ""}
  >>>
  parameter_meta {
    r_format: ")"
  }
  output {
    File out_stdout = stdout()
  }
}