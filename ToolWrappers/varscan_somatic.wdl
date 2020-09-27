version 1.0

task VarscanSomatic {
  input {
    File? output_snp
    File? output_in_del
    Boolean? min_coverage
    Boolean? min_coverage_normal
    Boolean? min_coverage_tumor
    Boolean? min_var_freq
    Boolean? min_freq_for_hom
    Boolean? normal_purity
    Boolean? tumor_purity
    Boolean? p_value
    Boolean? somatic_p_value
    Boolean? strand_filter
    Boolean? validation
    Boolean? output_vcf
    String? normal_pile_up
    String? tumor_pile_up
  }
  command <<<
    varscan somatic \
      ~{normal_pile_up} \
      ~{tumor_pile_up} \
      ~{if (output_snp) then "--output-snp" else ""} \
      ~{if (output_in_del) then "--output-indel" else ""} \
      ~{if (min_coverage) then "--min-coverage" else ""} \
      ~{if (min_coverage_normal) then "--min-coverage-normal" else ""} \
      ~{if (min_coverage_tumor) then "--min-coverage-tumor" else ""} \
      ~{if (min_var_freq) then "--min-var-freq" else ""} \
      ~{if (min_freq_for_hom) then "--min-freq-for-hom" else ""} \
      ~{if (normal_purity) then "--normal-purity" else ""} \
      ~{if (tumor_purity) then "--tumor-purity" else ""} \
      ~{if (p_value) then "--p-value" else ""} \
      ~{if (somatic_p_value) then "--somatic-p-value" else ""} \
      ~{if (strand_filter) then "--strand-filter" else ""} \
      ~{if (validation) then "--validation" else ""} \
      ~{if (output_vcf) then "--output-vcf" else ""}
  >>>
  parameter_meta {
    output_snp: "- Output file for SNP calls [output.snp]"
    output_in_del: "- Output file for indel calls [output.indel]"
    min_coverage: "- Minimum coverage in normal and tumor to call variant [8]"
    min_coverage_normal: "- Minimum coverage in normal to call somatic [8]"
    min_coverage_tumor: "- Minimum coverage in tumor to call somatic [6]"
    min_var_freq: "- Minimum variant frequency to call a heterozygote [0.20]"
    min_freq_for_hom: "Minimum frequency to call homozygote [0.75]"
    normal_purity: "- Estimated purity (non-tumor content) of normal sample [1.00]"
    tumor_purity: "- Estimated purity (tumor content) of tumor sample [1.00]"
    p_value: "- P-value threshold to call a heterozygote [0.99]"
    somatic_p_value: "- P-value threshold to call a somatic site [0.05]"
    strand_filter: "- If set to 1, removes variants with >90% strand bias [0]"
    validation: "- If set to 1, outputs all compared positions even if non-variant"
    output_vcf: "- If set to 1, output VCF instead of VarScan native format"
    normal_pile_up: ""
    tumor_pile_up: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_snp = "${in_output_snp}"
    File out_output_in_del = "${in_output_in_del}"
  }
}