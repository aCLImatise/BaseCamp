version 1.0

task Mpa {
  input {
    Directory? mpa_directory
    String? logging_level
    File? vcf_file_annotate
    File? output_vcf_file
  }
  command <<<
    mpa \
      ~{if defined(mpa_directory) then ("--mpa-directory " +  '"' + mpa_directory + '"') else ""} \
      ~{if defined(logging_level) then ("--logging-level " +  '"' + logging_level + '"') else ""} \
      ~{if defined(vcf_file_annotate) then ("--input " +  '"' + vcf_file_annotate + '"') else ""} \
      ~{if defined(output_vcf_file) then ("--output " +  '"' + output_vcf_file + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/mobidic-mpa:1.2.1--pyh3252c3a_0"
  }
  parameter_meta {
    mpa_directory: "The path to the MPA installation folder. [Default:\\n/usr/local/bin]"
    logging_level: "The logger level. [Default: INFO]"
    vcf_file_annotate: "The vcf file to annotate (format: VCF). This vcf must\\nbe annotate with annovar."
    output_vcf_file: "The output vcf file with annotation (format : VCF)\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_vcf_file = "${in_output_vcf_file}"
  }
}