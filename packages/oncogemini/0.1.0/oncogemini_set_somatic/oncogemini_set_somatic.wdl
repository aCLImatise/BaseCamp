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
      ~{if (dry_run) then "--dry-run" else ""}
  >>>
  parameter_meta {
    mind_p: "Minimum depth required in all samples (default is 0)"
    ming_q: "Minimum genotype quality required in all samples\\n(default is 0)"
    norma_f: "The max freq. of the alt. allele in the normal sample\\n(def: 0)."
    norm_count: "The max count. of the alt. allele in the normal sample\\n(def: 0)."
    norm_dp: "The minimum depth allowed in the normal sample to\\nbelieve somatic (def: 0)."
    tuma_f: "The min freq. of the alt. allele in the tumor sample\\n(def: 0)."
    tum_count: "The min count. of the alt. allele in the tumor sample\\n(def: 0)."
    tu_mdp: "The minimum depth allowed in the tumor sample to\\nbelieve somatic (def: 0)."
    dry_run: "Don't set the is_somatic flag, just report what\\n_would_ be set. For testing parameters.\\n"
  }
  output {
    File out_stdout = stdout()
  }
}