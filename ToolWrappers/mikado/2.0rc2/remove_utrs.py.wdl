version 1.0

task RemoveUtrspy {
  input {
    String script
    String to
    String remove
    String utrs
    String from
    String a
    String gff
  }
  command <<<
    remove_utrs_py \
      ~{script} \
      ~{to} \
      ~{remove} \
      ~{utrs} \
      ~{from} \
      ~{a} \
      ~{gff}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    script: ""
    to: ""
    remove: ""
    utrs: ""
    from: ""
    a: ""
    gff: ""
  }
  output {
    File out_stdout = stdout()
  }
}