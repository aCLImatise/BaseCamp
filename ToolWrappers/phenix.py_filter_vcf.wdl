version 1.0

task PhenixpyFilterVcf {
  input {
    File? vcf
    Float? filters
    String? config
    String? location_filtered_vcf
    Float? reference
    Boolean? only_good
  }
  command <<<
    phenix_py filter_vcf \
      ~{if defined(vcf) then ("--vcf " +  '"' + vcf + '"') else ""} \
      ~{if defined(filters) then ("--filters " +  '"' + filters + '"') else ""} \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""} \
      ~{if defined(location_filtered_vcf) then ("--output " +  '"' + location_filtered_vcf + '"') else ""} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if (only_good) then "--only-good" else ""}
  >>>
  parameter_meta {
    vcf: "VCF file to (re)filter."
    filters: "Filter(s) to apply as key:threshold pairs, separated\\nby comma. Recommendations: GATK:\\nmq_score:30,min_depth:10,ad_ratio:0.9 Mpileup:\\nmq_score:30,min_depth:10,dp4_ratio:0.9"
    config: "Config with filters in YAML format.\\nE.g.filters:-key:value"
    location_filtered_vcf: "Location for filtered VCF to be written."
    reference: "mpileup version <= 1.3 do not output all positions.\\nThis is required to fix rfrence base in VCF."
    only_good: "Write only variants that PASS all filters (default all\\nvariants are written).\\n"
  }
  output {
    File out_stdout = stdout()
  }
}