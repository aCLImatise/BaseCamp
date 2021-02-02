version 1.0

task SSeqTsv2vcfpy {
  input {
    String? tsv_in
    String? vcf_out
    Float? pass_threshold
    Float? low_qual_threshold
    Float? hom_threshold
    Float? het_threshold
    String? normal_sample_name
    String? tumor_sample_name
    Boolean? tools
    Boolean? emit_all
    Boolean? phred_scale
    Boolean? single_sample
    Boolean? paired_samples
  }
  command <<<
    SSeq_tsv2vcf_py \
      ~{if defined(tsv_in) then ("--tsv-in " +  '"' + tsv_in + '"') else ""} \
      ~{if defined(vcf_out) then ("--vcf-out " +  '"' + vcf_out + '"') else ""} \
      ~{if defined(pass_threshold) then ("--pass-threshold " +  '"' + pass_threshold + '"') else ""} \
      ~{if defined(low_qual_threshold) then ("--lowqual-threshold " +  '"' + low_qual_threshold + '"') else ""} \
      ~{if defined(hom_threshold) then ("--hom-threshold " +  '"' + hom_threshold + '"') else ""} \
      ~{if defined(het_threshold) then ("--het-threshold " +  '"' + het_threshold + '"') else ""} \
      ~{if defined(normal_sample_name) then ("--normal-sample-name " +  '"' + normal_sample_name + '"') else ""} \
      ~{if defined(tumor_sample_name) then ("--tumor-sample-name " +  '"' + tumor_sample_name + '"') else ""} \
      ~{if (tools) then "-tools" else ""} \
      ~{if (emit_all) then "--emit-all" else ""} \
      ~{if (phred_scale) then "--phred-scale" else ""} \
      ~{if (single_sample) then "--single-sample" else ""} \
      ~{if (paired_samples) then "--paired-samples" else ""}
  >>>
  parameter_meta {
    tsv_in: "TSV in (default: None)"
    vcf_out: "VCF iut (default: None)"
    pass_threshold: "Above which is automatically PASS (default: 0.5)"
    low_qual_threshold: "Low quality subject to lenient filter (default: 0.1)"
    hom_threshold: "The VAF to be labeled 1/1 in GT (default: 0.85)"
    het_threshold: "The VAF to be labeled 0/1 in GT (default: 0.01)"
    normal_sample_name: "Normal Sample Name (default: NORMAL)"
    tumor_sample_name: "Tumor Sample Name (default: TUMOR)"
    tools: "[INDIVIDUAL_MUTATION_TOOLS [INDIVIDUAL_MUTATION_TOOLS ...]], --individual-mutation-tools [INDIVIDUAL_MUTATION_TOOLS [INDIVIDUAL_MUTATION_TOOLS ...]]\\nA list of all tools used. Possible values are\\nCGA/MuTect/MuTect2 (M), VarScan2 (V), JointSNVMix2\\n(J), SomaticSniper (S), VarDict (D), MuSE (U), LoFreq\\n(L), Scalpel (P), Strelka (K), TNscope (T), and/or\\nPlatypus (Y) (default: None)"
    emit_all: "Flag it to print out everything (default: False)"
    phred_scale: "Flag it to print out Phred scale QUAL (proper VCF\\nformat but more annoying to filter) (default: False)"
    single_sample: "Tumor-only mode (default: False)"
    paired_samples: "Paired tumor-normal samples (default: True)\\n"
  }
  output {
    File out_stdout = stdout()
  }
}