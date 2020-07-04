version 1.0

task DshRemapPhaseSet {
  input {
    Boolean? about
    Boolean? input_vcf_file
    Boolean? output_vcf_file
  }
  command <<<
    dsh-remap-phase-set \
      ~{true="--about" false="" about} \
      ~{true="--input-vcf-file" false="" input_vcf_file} \
      ~{true="--output-vcf-file" false="" output_vcf_file}
  >>>
  parameter_meta {
    about: "display about message [optional]"
    input_vcf_file: "[class java.io.File]  input VCF file, default stdin [optional]"
    output_vcf_file: "[class java.io.File]  output VCF file, default stdout [optional]"
  }
}