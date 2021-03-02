version 1.0

task CreatePhylowgsInputspy {
  input {
    File? vcf_type
    Float? error_rate
    Float? missing_variant_confidence
    Int? sample_size
    File? priority_ssms
    Boolean? only_priority
    File? cn_vs
    String? regions
    String? output_cn_vs
    String? output_variants
    String? output_params
    File? tumor_sample
    Int? muse_tier
    File? non_subsampled_variants
    File? non_subsampled_variants_cn_vs
    String? sex
    Int? het_snp_rate
    String vcf_files
  }
  command <<<
    create_phylowgs_inputs_py \
      ~{vcf_files} \
      ~{if defined(vcf_type) then ("--vcf-type " +  '"' + vcf_type + '"') else ""} \
      ~{if defined(error_rate) then ("--error-rate " +  '"' + error_rate + '"') else ""} \
      ~{if defined(missing_variant_confidence) then ("--missing-variant-confidence " +  '"' + missing_variant_confidence + '"') else ""} \
      ~{if defined(sample_size) then ("--sample-size " +  '"' + sample_size + '"') else ""} \
      ~{if defined(priority_ssms) then ("--priority-ssms " +  '"' + priority_ssms + '"') else ""} \
      ~{if (only_priority) then "--only-priority" else ""} \
      ~{if defined(cn_vs) then ("--cnvs " +  '"' + cn_vs + '"') else ""} \
      ~{if defined(regions) then ("--regions " +  '"' + regions + '"') else ""} \
      ~{if defined(output_cn_vs) then ("--output-cnvs " +  '"' + output_cn_vs + '"') else ""} \
      ~{if defined(output_variants) then ("--output-variants " +  '"' + output_variants + '"') else ""} \
      ~{if defined(output_params) then ("--output-params " +  '"' + output_params + '"') else ""} \
      ~{if defined(tumor_sample) then ("--tumor-sample " +  '"' + tumor_sample + '"') else ""} \
      ~{if defined(muse_tier) then ("--muse-tier " +  '"' + muse_tier + '"') else ""} \
      ~{if defined(non_subsampled_variants) then ("--nonsubsampled-variants " +  '"' + non_subsampled_variants + '"') else ""} \
      ~{if defined(non_subsampled_variants_cn_vs) then ("--nonsubsampled-variants-cnvs " +  '"' + non_subsampled_variants_cn_vs + '"') else ""} \
      ~{if defined(sex) then ("--sex " +  '"' + sex + '"') else ""} \
      ~{if defined(het_snp_rate) then ("--het-snp-rate " +  '"' + het_snp_rate + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    vcf_type: "Type of VCF file for each sample, specified as\\n<sample>=<vcf_type>. Valid VCF types are strelka,mutec\\nt_pcawg,dkfz,muse,vardict,mutect_smchet,mutect_tcga,sa\\nnger,pcawg_consensus. (default: None)"
    error_rate: "Expected error rate of sequencing platform (default:\\n0.001)"
    missing_variant_confidence: "Confidence in range [0, 1] that SSMs missing from a\\nsample are indeed not present in that sample (default:\\n1.0)"
    sample_size: "Subsample SSMs to reduce PhyloWGS runtime (default:\\nNone)"
    priority_ssms: "File containing newline-separated list of SSMs in\\n\\\"<chr>_<locus>\\\" format to prioritize for inclusion\\n(default: None)"
    only_priority: "Only sample variants provided on priority list\\n(default: False)"
    cn_vs: "Path to CNV file created with parse_cnvs.py for each\\nsample. Specified as <sample>=<CNV path>. (default:\\nNone)"
    regions: "Which regions to use variants from. Refer to the\\nparser README for more details. (default:\\nnormal_and_abnormal_cn)"
    output_cn_vs: "Output destination for CNVs (default: cnv_data.txt)"
    output_variants: "Output destination for variants (default:\\nssm_data.txt)"
    output_params: "Output destination for run parameters (default:\\nparams.json)"
    tumor_sample: "Name of the tumor sample in the input VCF file.\\nDefaults to last sample if not specified. (default:\\nNone)"
    muse_tier: "Maximum MuSE tier to include (default: 0)"
    non_subsampled_variants: "If subsampling, write nonsubsampled variants to\\nseparate file, in addition to subsampled variants\\n(default: None)"
    non_subsampled_variants_cn_vs: "If subsampling, write CNVs for nonsubsampled variants\\nto separate file (default: None)"
    sex: "Sex of patient. Used to adjust expected variant\\nfrequencies on sex chromosomes. If auto, patient is\\nset to male if any variants are provided on the Y\\nchromosome, and female otherwise. (default: auto)"
    het_snp_rate: "Average number of heterozygous SNPs per base used to\\ncall copy number. This determines how heavily we\\nweight somatic CNAs relative to SNVs. Defaults to 7\\nSNPs per 10 kb, as per Battenberg. (default: 0.0007)"
    vcf_files: "Path to VCF file for each sample. Specified as\\n<sample>=<VCF path>."
  }
  output {
    File out_stdout = stdout()
  }
}