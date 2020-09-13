version 1.0

task Dshremapphaseset {
  input {
    Boolean? about
    Boolean? input_vcf_file
    File? output_vcf_file
  }
  command <<<
    dsh_remap_phase_set \
      ~{if (about) then "--about" else ""} \
      ~{if (input_vcf_file) then "--input-vcf-file" else ""} \
      ~{if (output_vcf_file) then "--output-vcf-file" else ""}
  >>>
  parameter_meta {
    about: "display about message [optional]"
    input_vcf_file: "[class java.io.File]  input VCF file, default stdin [optional]"
    output_vcf_file: "[class java.io.File]  output VCF file, default stdout [optional]"
  }
  output {
    File out_stdout = stdout()
    File out_output_vcf_file = "${in_output_vcf_file}"
  }
}