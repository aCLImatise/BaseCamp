version 1.0

task Surpyvor {
  input {
    Boolean? v
  }
  command <<<
    surpyvor \
      ~{if (v) then "-v" else ""}
  >>>
  parameter_meta {
    v: ""
  }
  output {
    File out_stdout = stdout()
  }
}