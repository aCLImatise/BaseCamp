version 1.0

task AsmCollectpy {
  input {
    String script
    String to
    String collect
    String info
    String from
    String multiple
    String mikado
    String util
    String stats
    String files
  }
  command <<<
    asm_collect_py \
      ~{script} \
      ~{to} \
      ~{collect} \
      ~{info} \
      ~{from} \
      ~{multiple} \
      ~{mikado} \
      ~{util} \
      ~{stats} \
      ~{files}
  >>>
  runtime {
    docker: "quay.io/biocontainers/mikado:2.1.1--py36hf0b53f7_0"
  }
  parameter_meta {
    script: ""
    to: ""
    collect: ""
    info: ""
    from: ""
    multiple: ""
    mikado: ""
    util: ""
    stats: ""
    files: ""
  }
  output {
    File out_stdout = stdout()
  }
}