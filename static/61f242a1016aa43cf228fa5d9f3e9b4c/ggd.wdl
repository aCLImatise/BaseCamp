version 1.0

task Ggd {
  input {
    Boolean? v
  }
  command <<<
    ggd \
      ~{if (v) then "-v" else ""}
  >>>
  parameter_meta {
    v: ""
  }
  output {
    File out_stdout = stdout()
  }
}