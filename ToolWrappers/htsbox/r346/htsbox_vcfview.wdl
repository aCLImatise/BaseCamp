version 1.0

task HtsboxVcfview {
  input {
    Boolean? output_in_bcf
    Boolean? input_is_vcf
    File? output_file_name
    Int? compression_level
    File? list_reference_names
    File? list_started_otherwise
    Boolean? drop_individual_information
    Boolean? exclude_indels
    String vcf_view
    String in_dot_bcf
  }
  command <<<
    htsbox vcfview \
      ~{vcf_view} \
      ~{in_dot_bcf} \
      ~{if (output_in_bcf) then "-b" else ""} \
      ~{if (input_is_vcf) then "-S" else ""} \
      ~{if defined(output_file_name) then ("-o " +  '"' + output_file_name + '"') else ""} \
      ~{if defined(compression_level) then ("-l " +  '"' + compression_level + '"') else ""} \
      ~{if defined(list_reference_names) then ("-t " +  '"' + list_reference_names + '"') else ""} \
      ~{if defined(list_started_otherwise) then ("-s " +  '"' + list_started_otherwise + '"') else ""} \
      ~{if (drop_individual_information) then "-G" else ""} \
      ~{if (exclude_indels) then "-I" else ""}
  >>>
  parameter_meta {
    output_in_bcf: "output in BCF"
    input_is_vcf: "input is VCF"
    output_file_name: "output file name [stdout]"
    compression_level: "compression level [0]"
    list_reference_names: "list of reference names and lengths [null]"
    list_started_otherwise: "list of samples (STR if started with ':'; FILE otherwise) [null]"
    drop_individual_information: "drop individual genotype information"
    exclude_indels: "exclude INDELs"
    vcf_view: ""
    in_dot_bcf: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_file_name = "${in_output_file_name}"
  }
}