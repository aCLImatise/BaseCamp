version 1.0

task Dshvarianttabletovcf {
  input {
    Boolean? about
    Boolean? input_variant_table_file
    File? output_vcf_file
    String? args
  }
  command <<<
    dsh_variant_table_to_vcf \
      ~{args} \
      ~{if (about) then "--about" else ""} \
      ~{if (input_variant_table_file) then "--input-variant-table-file" else ""} \
      ~{if (output_vcf_file) then "--output-vcf-file" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    about: "display about message [optional]"
    input_variant_table_file: "[class java.io.File]  input Ensembl variant table file, default stdin [optional]"
    output_vcf_file: "[class java.io.File]  output VCF file, default stdout [optional]"
    args: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_vcf_file = "${in_output_vcf_file}"
  }
}