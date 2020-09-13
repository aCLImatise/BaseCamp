version 1.0

task BiscuitCinread {
  input {
    Boolean? region
    Boolean? target_c_ch
    Boolean? content_print_cgrposcqpos
    Boolean? consider_secondary_mapping
    Boolean? o
    String cin_read
    String ref_dot_fa
    String in_dot_bam
  }
  command <<<
    biscuit cinread \
      ~{cin_read} \
      ~{ref_dot_fa} \
      ~{in_dot_bam} \
      ~{if (region) then "-g" else ""} \
      ~{if (target_c_ch) then "-t" else ""} \
      ~{if (content_print_cgrposcqpos) then "-p" else ""} \
      ~{if (consider_secondary_mapping) then "-s" else ""} \
      ~{if (o) then "-o" else ""}
  >>>
  parameter_meta {
    region: "region."
    target_c_ch: "target (c, cg, ch, hcg, gch, hch) [cg]"
    content_print_cgrposcqpos: "content to print, \\\",\\\"-delimited:\\nQNAME, QPAIR, STRAND, BSSTRAND, MAPQ\\nQBEG, QEND, CHRM, CRPOS, CGRPOS\\nCQPOS, CRBASE, CCTXT, CQBASE, CRETENTION\\n[QNAME,QPAIR,BSSTRAND,CRBASE,CQBASE]"
    consider_secondary_mapping: "consider secondary mapping."
    o: "output."
    cin_read: ""
    ref_dot_fa: ""
    in_dot_bam: ""
  }
  output {
    File out_stdout = stdout()
  }
}