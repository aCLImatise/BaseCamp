version 1.0

task Smeg {
  input {
    Boolean? v
  }
  command <<<
    smeg \
      ~{if (v) then "-v" else ""}
  >>>
  parameter_meta {
    v: ""
  }
  output {
    File out_stdout = stdout()
  }
}