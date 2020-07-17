version 1.0

task AlignCollect.py {
  input {
    String script
    String to
    String collect
    String info
    String from
    String multiple
    String sam_tools
    String stats
    File files
  }
  command <<<
    align_collect.py \
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
}