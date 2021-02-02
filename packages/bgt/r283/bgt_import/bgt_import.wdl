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
      ~{if (input_is_vcf) then "-S" else ""} \
      ~{if defined(list_reference_names) then ("-t " +  '"' + list_reference_names + '"') else ""} \
      ~{if (keep_filtered_variants) then "-F" else ""} \
      ~{if (generate_file_used) then "-1" else ""}
  >>>
  parameter_meta {
    input_is_vcf: "input is VCF"
    list_reference_names: "list of reference names and lengths [null]"
    keep_filtered_variants: "keep filtered variants"
    generate_file_used: "generate .pb1 file (not used for now)"
    out_prefix: ""
    in_dot_bcf: ""
  }
  output {
    File out_stdout = stdout()
  }
}