version 1.0

task Msp {
  input {
    Boolean? v
  }
  command <<<
    msp \
      ~{if (v) then "-V" else ""}
  >>>
  parameter_meta {
    v: ""
  }
  output {
    File out_stdout = stdout()
  }
}