version 1.0

task SurpyvorMinlen {
  input {
    Boolean? verbose
    Int? length
    File? vcf_file_write
    String vcf
  }
  command <<<
    surpyvor minlen \
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
    length: "minimal SV length"
    vcf_file_write: "vcf file to write to\\n"
    vcf: "vcf file to parse"
  }
  output {
    File out_stdout = stdout()
  }
}