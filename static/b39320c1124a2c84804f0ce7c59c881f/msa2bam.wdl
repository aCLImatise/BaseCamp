version 1.0

task Msa2bam {
  input {
    String? reference
  }
  command <<<
    msa2bam \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""}
  >>>
  parameter_meta {
    reference: "REFERENCE FASTA file or {HXB2_env, HXB2_gag, HXB2_int, HXB2_nef, HXB2_pol, HXB2_pr, HXB2_prrt, HXB2_rev, HXB2_rt, HXB2_tat, HXB2_vif, HXB2_vpr, HXB2_vpu, NL4-3_prrt}"
  }
}