version 1.0

task Clipcontext {
  input {
    Boolean? v
  }
  command <<<
    clipcontext \
      ~{if (v) then "-v" else ""}
  >>>
  parameter_meta {
    v: ""
  }
  output {
    File out_stdout = stdout()
  }
}