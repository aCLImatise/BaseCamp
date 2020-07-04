version 1.0

task PhyluceSnpConvertVcfToSnapp {
  input {
    String? vcf_file_process
    String? structure_file_write
    Boolean? filter_identical
    Boolean? filter_informative
  }
  command <<<
    phyluce_snp_convert_vcf_to_snapp \
      ~{if defined(vcf_file_process) then ("--input " +  '"' + vcf_file_process + '"') else ""} \
      ~{if defined(structure_file_write) then ("--output " +  '"' + structure_file_write + '"') else ""} \
      ~{true="--filter-identical" false="" filter_identical} \
      ~{true="--filter-informative" false="" filter_informative}
  >>>
  parameter_meta {
    vcf_file_process: "The VCF file to process"
    structure_file_write: "The STRUCTURE file to write"
    filter_identical: "Remove sites with only a single genotype."
    filter_informative: "Remove uninformative sites."
  }
}