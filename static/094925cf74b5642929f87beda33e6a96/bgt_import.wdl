version 1.0

task BgtImport {
  input {
    Boolean? input_is_vcf
    File? list_reference_names
    Boolean? keep_filtered_variants
    Boolean? generate_file_used
    String out_prefix
    String in_dot_bcf
  }
  command <<<
    bgt import \
      ~{out_prefix} \
      ~{in_dot_bcf} \
      ~{true="-S" false="" input_is_vcf} \
      ~{if defined(list_reference_names) then ("-t " +  '"' + list_reference_names + '"') else ""} \
      ~{true="-F" false="" keep_filtered_variants} \
      ~{true="-1" false="" generate_file_used}
  >>>
  parameter_meta {
    input_is_vcf: "input is VCF"
    list_reference_names: "list of reference names and lengths [null]"
    keep_filtered_variants: "keep filtered variants"
    generate_file_used: "generate .pb1 file (not used for now)"
    out_prefix: ""
    in_dot_bcf: ""
  }
}