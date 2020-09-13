version 1.0

task RemoveUtrspy {
  input {
    String? f
    String script
    String to
    String remove
    String utrs
    String from
    String a
    String gff_slash_gtf_dot
    String gff
    String? out
  }
  command <<<
    remove_utrs_py \
      ~{script} \
      ~{to} \
      ~{remove} \
      ~{utrs} \
      ~{from} \
      ~{a} \
      ~{gff_slash_gtf_dot} \
      ~{gff} \
      ~{out} \
      ~{if defined(f) then ("-f " +  '"' + f + '"') else ""}
  >>>
  parameter_meta {
    f: ""
    script: ""
    to: ""
    remove: ""
    utrs: ""
    from: ""
    a: ""
    gff_slash_gtf_dot: ""
    gff: ""
    out: ""
  }
  output {
    File out_stdout = stdout()
  }
}