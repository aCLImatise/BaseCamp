version 1.0

task AsmCollect.py {
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
    File files
  }
  command <<<
    asm_collect.py \
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
}