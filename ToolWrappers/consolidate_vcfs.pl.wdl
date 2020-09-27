version 1.0

task ConsolidateVcfspl {
  input {
    Int? snv_abundance_ratio
    Boolean? vcf_split
    Boolean? m_pile_up
    Boolean? coverage_cut_off
    Boolean? min_mean_mapping
    Int v_one
  }
  command <<<
    consolidate_vcfs_pl \
      ~{v_one} \
      ~{if defined(snv_abundance_ratio) then ("--snv-abundance-ratio " +  '"' + snv_abundance_ratio + '"') else ""} \
      ~{if (vcf_split) then "--vcfsplit" else ""} \
      ~{if (m_pile_up) then "--mpileup" else ""} \
      ~{if (coverage_cut_off) then "--coverage-cutoff" else ""} \
      ~{if (min_mean_mapping) then "--min-mean-mapping" else ""}
  >>>
  parameter_meta {
    snv_abundance_ratio: "/opt/bcftools/bcftools"
    vcf_split: "[REQUIRED]\\nMultiple list of key/value pair. Multiple .gz files can be input.\\nExample with 3 gz files: --vcfsplit 'name=/path/vcf1.gz' --vcfsplit\\n'name=/path/vcf2.gz' --vcfsplit 'name=/path/vcf3.gz'."
    m_pile_up: "[REQUIRED]\\nMultiple list of key/value pair. Multiple .gz files can be input.\\nExample with 3 gz files: --mpileup 'name=/path/vcf1.gz' --mpileup\\n'name=/path/vcf2.gz' --mpileup 'name=/path/vcf3.gz'."
    coverage_cut_off: "[REQUIRED]\\nThe cutoff for coverage to include a reference base (default: 1)."
    min_mean_mapping: "[REQUIRED]\\nMean mapping quality of observed alternate alleles."
    v_one: ""
  }
  output {
    File out_stdout = stdout()
  }
}