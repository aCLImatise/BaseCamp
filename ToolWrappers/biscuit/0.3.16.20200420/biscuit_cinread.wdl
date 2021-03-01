version 1.0

task BiscuitCinread {
  input {
    Boolean? region
    Boolean? target_c_cg
    Boolean? content_print_delimitedqname
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
      ~{if (target_c_cg) then "-t" else ""} \
      ~{if (content_print_delimitedqname) then "-p" else ""} \
      ~{if (consider_secondary_mapping) then "-s" else ""} \
      ~{if (o) then "-o" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    region: "region."
    target_c_cg: "target (c, cg, ch, hcg, gch, hch) [cg]"
    content_print_delimitedqname: "content to print, \\\",\\\"-delimited:\\nQNAME, QPAIR, STRAND, BSSTRAND, MAPQ\\nQBEG, QEND, CHRM, CRPOS, CGRPOS\\nCQPOS, CRBASE, CCTXT, CQBASE, CRETENTION\\n[QNAME,QPAIR,BSSTRAND,CRBASE,CQBASE]"
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