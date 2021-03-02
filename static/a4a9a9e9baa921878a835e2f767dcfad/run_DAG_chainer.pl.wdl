version 1.0

task RunDAGChainerpl {
  input {
    Boolean? more_options
    Boolean? options
  }
  command <<<
    run_DAG_chainer_pl \
      ~{if (more_options) then "-MORE_OPTIONS" else ""} \
      ~{if (options) then "-OPTIONS" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/dagchainer:r120920--hc9558a2_0"
  }
  parameter_meta {
    more_options: ""
    options: ""
  }
  output {
    File out_stdout = stdout()
  }
}