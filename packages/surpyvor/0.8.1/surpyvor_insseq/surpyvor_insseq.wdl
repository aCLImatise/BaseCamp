version 1.0

task SurpyvorInsseq {
  input {
    Boolean? verbose
    File? vcf_file_write
  }
  command <<<
    surpyvor insseq \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(vcf_file_write) then ("--output " +  '"' + vcf_file_write + '"') else ""}
  >>>
  parameter_meta {
    verbose: "Print out more information while running."
    vcf_file_write: "vcf file to write improved variants to [stdout]\\n"
  }
  output {
    File out_stdout = stdout()
  }
}