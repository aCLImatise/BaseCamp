version 1.0

task Traitar {
  input {
    Boolean? v
  }
  command <<<
    traitar \
      ~{if (v) then "-v" else ""}
  >>>
  parameter_meta {
    v: ""
  }
  output {
    File out_stdout = stdout()
  }
}