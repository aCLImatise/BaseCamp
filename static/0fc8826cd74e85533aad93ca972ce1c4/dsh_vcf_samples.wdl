version 1.0

task DshVcfSamples {
  input {
    Boolean? about
    Boolean? input_vcf_file
    Boolean? output_sample_file
  }
  command <<<
    dsh-vcf-samples \
      ~{true="--about" false="" about} \
      ~{true="--input-vcf-file" false="" input_vcf_file} \
      ~{true="--output-sample-file" false="" output_sample_file}
  >>>
  parameter_meta {
    about: "display about message [optional]"
    input_vcf_file: "[class java.io.File]  input VCF file, default stdin [optional]"
    output_sample_file: "[class java.io.File]  output sample file, default stdout [optional]"
  }
}