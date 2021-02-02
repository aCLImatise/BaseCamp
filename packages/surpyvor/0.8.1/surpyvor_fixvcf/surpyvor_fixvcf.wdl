version 1.0

task SurpyvorFixvcf {
  input {
    Boolean? verbose
    File? vcf_file_write
    String vcf
  }
  command <<<
    surpyvor fixvcf \
      ~{vcf} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(vcf_file_write) then ("--output " +  '"' + vcf_file_write + '"') else ""}
  >>>
  parameter_meta {
    verbose: "Print out more information while running."
    vcf_file_write: "vcf file to write to\\n"
    vcf: "vcf file to parse"
  }
  output {
    File out_stdout = stdout()
  }
}