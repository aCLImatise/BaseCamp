version 1.0

task Flaimapper {
  input {
    Boolean? v
  }
  command <<<
    flaimapper \
      ~{if (v) then "-V" else ""}
  >>>
  parameter_meta {
    v: ""
  }
  output {
    File out_stdout = stdout()
  }
}