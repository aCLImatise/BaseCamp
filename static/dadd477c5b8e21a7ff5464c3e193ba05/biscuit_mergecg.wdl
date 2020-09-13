version 1.0

task BiscuitMergecg {
  input {
    Boolean? nomeseq_mode_only
    Int? minimum_depth_merging
    String ref
    String bed
  }
  command <<<
    biscuit mergecg \
      ~{ref} \
      ~{bed} \
      ~{if (nomeseq_mode_only) then "-n" else ""} \
      ~{if defined(minimum_depth_merging) then ("-k " +  '"' + minimum_depth_merging + '"') else ""}
  >>>
  parameter_meta {
    nomeseq_mode_only: "NOMe-seq mode, only merge C,G both in HCGD context"
    minimum_depth_merging: "minimum depth after merging (0). This applies to the maximum depth\\nacross samples."
    ref: "fai-indexed fasta"
    bed: "sorted bed file, starting from column 4,5, we have alternating\\nbeta value and coverage for each sample. This is what output from\\nbiscuit vcf2bed without -e."
  }
  output {
    File out_stdout = stdout()
  }
}