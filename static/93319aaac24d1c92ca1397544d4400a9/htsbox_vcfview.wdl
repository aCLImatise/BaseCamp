version 1.0

task HtsboxVcfview {
  input {
    Boolean? output_in_bcf
    Boolean? input_is_vcf
    File? output_file_name
    Int? compression_level
    File? list_reference_names
    File? list_samples_started
    Boolean? drop_genotype_information
    Boolean? exclude_indels
    String vcf_view
    String in_dot_bcf
  }
  command <<<
    htsbox vcfview \
      ~{vcf_view} \
      ~{in_dot_bcf} \
      ~{true="-b" false="" output_in_bcf} \
      ~{true="-S" false="" input_is_vcf} \
      ~{if defined(output_file_name) then ("-o " +  '"' + output_file_name + '"') else ""} \
      ~{if defined(compression_level) then ("-l " +  '"' + compression_level + '"') else ""} \
      ~{if defined(list_reference_names) then ("-t " +  '"' + list_reference_names + '"') else ""} \
      ~{if defined(list_samples_started) then ("-s " +  '"' + list_samples_started + '"') else ""} \
      ~{true="-G" false="" drop_genotype_information} \
      ~{true="-I" false="" exclude_indels}
  >>>
  parameter_meta {
    output_in_bcf: "output in BCF"
    input_is_vcf: "input is VCF"
    output_file_name: "output file name [stdout]"
    compression_level: "compression level [0]"
    list_reference_names: "list of reference names and lengths [null]"
    list_samples_started: "list of samples (STR if started with ':'; FILE otherwise) [null]"
    drop_genotype_information: "drop individual genotype information"
    exclude_indels: "exclude INDELs"
    vcf_view: ""
    in_dot_bcf: ""
  }
}