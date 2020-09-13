version 1.0

task Mamotif {
  input {
    Boolean? v
  }
  command <<<
    mamotif \
      ~{if (v) then "-v" else ""}
  >>>
  parameter_meta {
    v: ""
  }
  output {
    File out_stdout = stdout()
  }
}