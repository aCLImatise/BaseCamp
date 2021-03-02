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
    docker: "None"
  }
  parameter_meta {
    go_dag: ""
    gomo_xml: ""
  }
  output {
    File out_stdout = stdout()
  }
}