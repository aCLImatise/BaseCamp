version 1.0

task FcDedupATigs {
  input {
    Int? max_idt
    Int? max_aln_cov
  }
  command <<<
    fc_dedup_a_tigs \
      ~{if defined(max_idt) then ("--max_idt " +  '"' + max_idt + '"') else ""} \
      ~{if defined(max_aln_cov) then ("--max_aln_cov " +  '"' + max_aln_cov + '"') else ""}
  >>>
  parameter_meta {
    max_idt: ""
    max_aln_cov: ""
  }
}