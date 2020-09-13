version 1.0

task DASmap {
  input {
    Boolean? p
  }
  command <<<
    DASmap \
      ~{if (p) then "-p" else ""}
  >>>
  parameter_meta {
    p: ""
  }
  output {
    File out_stdout = stdout()
  }
}