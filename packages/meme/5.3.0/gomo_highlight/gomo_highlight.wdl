version 1.0

task GomoHighlight {
  input {
    String go_dag
    String gomo_xml
  }
  command <<<
    gomo_highlight \
      ~{go_dag} \
      ~{gomo_xml}
  >>>
  runtime {
    docker: "quay.io/biocontainers/meme:5.3.0--py38pl526hc1f1133_0"
  }
  parameter_meta {
    go_dag: ""
    gomo_xml: ""
  }
  output {
    File out_stdout = stdout()
  }
}