version 1.0

task DshVariantTableToVcf {
  input {
    Boolean? about
    Boolean? input_variant_table_file
    Boolean? output_vcf_file
    String? args
  }
  command <<<
    dsh-variant-table-to-vcf \
      ~{args} \
      ~{true="--about" false="" about} \
      ~{true="--input-variant-table-file" false="" input_variant_table_file} \
      ~{true="--output-vcf-file" false="" output_vcf_file}
  >>>
  parameter_meta {
    about: "display about message [optional]"
    input_variant_table_file: "[class java.io.File]  input Ensembl variant table file, default stdin [optional]"
    output_vcf_file: "[class java.io.File]  output VCF file, default stdout [optional]"
    args: ""
  }
}