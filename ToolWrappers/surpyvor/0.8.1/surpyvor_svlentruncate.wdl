version 1.0

task SurpyvorSvlentruncate {
  input {
    Boolean? verbose
    Int? length
    File? vcf_file_write
    String vcf
  }
  command <<<
    surpyvor svlentruncate \
      ~{vcf} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(length) then ("--length " +  '"' + length + '"') else ""} \
      ~{if defined(vcf_file_write) then ("--output " +  '"' + vcf_file_write + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    verbose: "Print out more information while running."
    length: "maximal SVLEN, replace SVLEN by this value if larger"
    vcf_file_write: "vcf file to write to\\n"
    vcf: "vcf file to parse"
  }
  output {
    File out_stdout = stdout()
  }
}