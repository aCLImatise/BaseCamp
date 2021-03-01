version 1.0

task OncogeminiSetSomatic {
  input {
    Int? mind_p
    Int? ming_q
    Int? norma_f
    Int? norm_count
    Int? norm_dp
    Int? tuma_f
    Int? tum_count
    Int? tu_mdp
    Boolean? purity
    Boolean? dry_run
  }
  command <<<
    oncogemini set_somatic \
      ~{if defined(mind_p) then ("--minDP " +  '"' + mind_p + '"') else ""} \
      ~{if defined(ming_q) then ("--minGQ " +  '"' + ming_q + '"') else ""} \
      ~{if defined(norma_f) then ("--normAF " +  '"' + norma_f + '"') else ""} \
      ~{if defined(norm_count) then ("--normCount " +  '"' + norm_count + '"') else ""} \
      ~{if defined(norm_dp) then ("--normDP " +  '"' + norm_dp + '"') else ""} \
      ~{if defined(tuma_f) then ("--tumAF " +  '"' + tuma_f + '"') else ""} \
      ~{if defined(tum_count) then ("--tumCount " +  '"' + tum_count + '"') else ""} \
      ~{if defined(tu_mdp) then ("--tumDP " +  '"' + tu_mdp + '"') else ""} \
      ~{if (purity) then "--purity" else ""} \
      ~{if (dry_run) then "--dry-run" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/oncogemini:1.0.0--pyh3252c3a_0"
  }
  parameter_meta {
    mind_p: "Minimum depth required in all samples (default is 0)"
    ming_q: "Minimum genotype quality required in all samples\\n(default is 0)"
    norma_f: "The maximum frequency of the alternate allele in the\\nnormal sample (default 0)."
    norm_count: "The maximum count of the alternate allele in the\\nnormal sample (default 0)."
    norm_dp: "The minimum depth allowed in the normal sample to\\nbelieve somatic (default 0)."
    tuma_f: "The minimum frequency of the alternate allele in the\\ntumor sample (default 0)."
    tum_count: "The minimum count of the alternate allele in the tumor\\nsample (default 0)."
    tu_mdp: "The minimum depth allowed in the tumor sample to\\nbelieve somatic (default 0)."
    purity: "Using purity estimates in sample manifest file, make\\ncorrections to AF to be used"
    dry_run: "Don't set the is_somatic flag, just report what\\n_would_ be set. For testing parameters.\\n"
  }
  output {
    File out_stdout = stdout()
  }
}