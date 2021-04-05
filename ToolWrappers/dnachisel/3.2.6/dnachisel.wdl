version 1.0

task Dnachisel {
  input {
    Boolean? circular
    String source
    String target
  }
  command <<<
    dnachisel \
      ~{source} \
      ~{target} \
      ~{if (circular) then "--circular" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/dnachisel:3.2.6--pyh3252c3a_0"
  }
  parameter_meta {
    circular: ""
    source: ""
    target: ""
  }
  output {
    File out_stdout = stdout()
  }
}