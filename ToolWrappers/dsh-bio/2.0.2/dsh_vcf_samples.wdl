version 1.0

task Dshvcfsamples {
  input {
    Boolean? about
    Boolean? input_vcf_file
    File? output_sample_file
  }
  command <<<
    dsh_vcf_samples \
      ~{if (about) then "--about" else ""} \
      ~{if (input_vcf_file) then "--input-vcf-file" else ""} \
      ~{if (output_sample_file) then "--output-sample-file" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/dsh-bio:2.0.2--0"
  }
  parameter_meta {
    about: "display about message [optional]"
    input_vcf_file: "[class java.io.File]  input VCF file, default stdin [optional]"
    output_sample_file: "[class java.io.File]  output sample file, default stdout [optional]"
  }
  output {
    File out_stdout = stdout()
    File out_output_sample_file = "${in_output_sample_file}"
  }
}