version 1.0

task BiscuitCinread {
  input {
    Boolean? region
    Boolean? target_c_cg
    Boolean? content_print_delimited
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
      ~{true="-g" false="" region} \
      ~{true="-t" false="" target_c_cg} \
      ~{true="-p" false="" content_print_delimited} \
      ~{true="-s" false="" consider_secondary_mapping} \
      ~{true="-o" false="" o}
  >>>
  parameter_meta {
    region: "region."
    target_c_cg: "target (c, cg, ch, hcg, gch, hch) [cg]"
    content_print_delimited: "content to print, \",\"-delimited: QNAME, QPAIR, STRAND, BSSTRAND, MAPQ QBEG, QEND, CHRM, CRPOS, CGRPOS CQPOS, CRBASE, CCTXT, CQBASE, CRETENTION [QNAME,QPAIR,BSSTRAND,CRBASE,CQBASE]"
    consider_secondary_mapping: "consider secondary mapping."
    o: "output."
    cin_read: ""
    ref_dot_fa: ""
    in_dot_bam: ""
  }
}