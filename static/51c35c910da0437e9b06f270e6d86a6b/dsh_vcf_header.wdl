version 1.0

task Dshvcfheader {
  input {
    Boolean? about
    Boolean? input_vcf_file
    File? output_vcf_header_file
    Boolean? validate
  }
  command <<<
    dsh_vcf_header \
      ~{if (about) then "--about" else ""} \
      ~{if (input_vcf_file) then "--input-vcf-file" else ""} \
      ~{if (output_vcf_header_file) then "--output-vcf-header-file" else ""} \
      ~{if (validate) then "--validate" else ""}
  >>>
  parameter_meta {
    about: "display about message [optional]"
    input_vcf_file: "[class java.io.File]  input VCF file, default stdin [optional]"
    output_vcf_header_file: "[class java.io.File]  output VCF header file, default stdout [optional]"
    validate: "validate VCF header lines [optional]"
  }
  output {
    File out_stdout = stdout()
    File out_output_vcf_header_file = "${in_output_vcf_header_file}"
  }
}