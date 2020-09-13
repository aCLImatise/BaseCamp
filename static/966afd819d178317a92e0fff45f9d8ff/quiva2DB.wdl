version 1.0

task Quiva2DB {
  input {
    Boolean? vl
  }
  command <<<
    quiva2DB \
      ~{if (vl) then "-vl" else ""}
  >>>
  parameter_meta {
    vl: ""
  }
  output {
    File out_stdout = stdout()
  }
}