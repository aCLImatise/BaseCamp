version 1.0

task ConsolidateVcfs.pl {
  input {
    String? snv_abundance_ratio
    String? vcf_split
  }
  command <<<
    consolidate_vcfs.pl \
      ~{if defined(snv_abundance_ratio) then ("--snv-abundance-ratio " +  '"' + snv_abundance_ratio + '"') else ""} \
      ~{if defined(vcf_split) then ("--vcfsplit " +  '"' + vcf_split + '"') else ""}
  >>>
  parameter_meta {
    snv_abundance_ratio: "/opt/bcftools/bcftools"
    vcf_split: ""
  }
}