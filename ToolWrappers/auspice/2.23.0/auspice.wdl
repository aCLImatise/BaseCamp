version 1.0

task Auspice {
  input {
    Boolean? v
  }
  command <<<
    auspice \
      ~{if (v) then "-v" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/auspice:2.23.0--he1b5a44_0"
  }
  parameter_meta {
    v: ""
  }
  output {
    File out_stdout = stdout()
  }
}