version 1.0

task PhyluceSnpConvertVcfToSnapp {
  input {
    File? vcf_file_process
    File? structure_file_write
    Boolean? filter_identical
    Boolean? filter_informative
  }
  command <<<
    phyluce_snp_convert_vcf_to_snapp \
      ~{if defined(vcf_file_process) then ("--input " +  '"' + vcf_file_process + '"') else ""} \
      ~{if defined(structure_file_write) then ("--output " +  '"' + structure_file_write + '"') else ""} \
      ~{if (filter_identical) then "--filter-identical" else ""} \
      ~{if (filter_informative) then "--filter-informative" else ""}
  >>>
  parameter_meta {
    vcf_file_process: "The VCF file to process"
    structure_file_write: "The STRUCTURE file to write"
    filter_identical: "Remove sites with only a single genotype."
    filter_informative: "Remove uninformative sites."
  }
  output {
    File out_stdout = stdout()
  }
}