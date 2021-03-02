version 1.0

task AlignCollectpy {
  input {
    String script
    String to
    String collect
    String info
    String from
    String multiple
    String sam_tools
    String stats
    String files
  }
  command <<<
    align_collect_py \
      ~{script} \
      ~{to} \
      ~{collect} \
      ~{info} \
      ~{from} \
      ~{multiple} \
      ~{sam_tools} \
      ~{stats} \
      ~{files}
  >>>
  runtime {
    docker: "quay.io/biocontainers/mikado:2.0.2--py37hfa133b6_0"
  }
  parameter_meta {
    script: ""
    to: ""
    collect: ""
    info: ""
    from: ""
    multiple: ""
    sam_tools: ""
    stats: ""
    files: ""
  }
  output {
    File out_stdout = stdout()
  }
}