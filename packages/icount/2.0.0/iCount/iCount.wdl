version 1.0

task ICount {
  input {
    Boolean? v
  }
  command <<<
    iCount \
      ~{if (v) then "-v" else ""}
  >>>
  parameter_meta {
    v: ""
  }
  output {
    File out_stdout = stdout()
  }
}