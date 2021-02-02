version 1.0

task LAsplit {
  input {
    Boolean? v
  }
  command <<<
    LAsplit \
      ~{if (v) then "-v" else ""}
  >>>
  parameter_meta {
    v: ""
  }
  output {
    File out_stdout = stdout()
  }
}