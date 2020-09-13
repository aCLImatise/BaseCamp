version 1.0

task Marscan {
  input {
    String? r_format
  }
  command <<<
    marscan \
      ~{if defined(r_format) then ("-rformat " +  '"' + r_format + '"') else ""}
  >>>
  parameter_meta {
    r_format: ")"
  }
  output {
    File out_stdout = stdout()
  }
}