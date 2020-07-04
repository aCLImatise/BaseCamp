version 1.0

task VarscanSomatic {
  input {
    Boolean? output_snp
    Boolean? output_in_del
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
      ~{true="--output-snp" false="" output_snp} \
      ~{true="--output-indel" false="" output_in_del} \
      ~{true="--min-coverage" false="" min_coverage} \
      ~{true="--min-coverage-normal" false="" min_coverage_normal} \
      ~{true="--min-coverage-tumor" false="" min_coverage_tumor} \
      ~{true="--min-var-freq" false="" min_var_freq} \
      ~{true="--min-freq-for-hom" false="" min_freq_for_hom} \
      ~{true="--normal-purity" false="" normal_purity} \
      ~{true="--tumor-purity" false="" tumor_purity} \
      ~{true="--p-value" false="" p_value} \
      ~{true="--somatic-p-value" false="" somatic_p_value} \
      ~{true="--strand-filter" false="" strand_filter} \
      ~{true="--validation" false="" validation} \
      ~{true="--output-vcf" false="" output_vcf}
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
}