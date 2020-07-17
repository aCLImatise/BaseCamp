version 1.0

task DshVcfHeader {
  input {
    Boolean? about
    Boolean? input_vcf_file
    Boolean? output_vcf_header_file
    Boolean? validate
  }
  command <<<
    dsh-vcf-header \
      ~{true="--about" false="" about} \
      ~{true="--input-vcf-file" false="" input_vcf_file} \
      ~{true="--output-vcf-header-file" false="" output_vcf_header_file} \
      ~{true="--validate" false="" validate}
  >>>
  parameter_meta {
    about: "display about message [optional]"
    input_vcf_file: "[class java.io.File]  input VCF file, default stdin [optional]"
    output_vcf_header_file: "[class java.io.File]  output VCF header file, default stdout [optional]"
    validate: "validate VCF header lines [optional]"
  }
}