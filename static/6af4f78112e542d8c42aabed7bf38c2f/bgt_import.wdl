version 1.0

task BgtImport {
  input {
    Boolean? input_is_vcf
    File? list_reference_lengths
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
      ~{if defined(list_reference_lengths) then ("-t " +  '"' + list_reference_lengths + '"') else ""} \
      ~{if (keep_filtered_variants) then "-F" else ""} \
      ~{if (generate_file_used) then "-1" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_is_vcf: "input is VCF"
    list_reference_lengths: "list of reference names and lengths [null]"
    keep_filtered_variants: "keep filtered variants"
    generate_file_used: "generate .pb1 file (not used for now)"
    out_prefix: ""
    in_dot_bcf: ""
  }
  output {
    File out_stdout = stdout()
  }
}