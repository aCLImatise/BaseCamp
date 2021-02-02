version 1.0

task Tango {
  input {
    Boolean? v
  }
  command <<<
    tango \
      ~{if (v) then "-v" else ""}
  >>>
  parameter_meta {
    v: ""
  }
  output {
    File out_stdout = stdout()
  }
}