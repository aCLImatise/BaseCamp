version 1.0

task Vcfcheck {
  input {
    Boolean? fast_a_reference
    String? exclude_failures
    Boolean? keep_failures
    File vcf_file
  }
  command <<<
    vcfcheck \
      ~{vcf_file} \
      ~{if (fast_a_reference) then "--fasta-reference" else ""} \
      ~{if defined(exclude_failures) then ("--exclude-failures " +  '"' + exclude_failures + '"') else ""} \
      ~{if (keep_failures) then "--keep-failures" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/vcflib:1.0.1--hd2e4403_1"
  }
  parameter_meta {
    fast_a_reference: "FASTA reference file to use to obtain primer sequences"
    exclude_failures: "a record fails, don't print it.  Otherwise do."
    keep_failures: "Print if the record fails, otherwise not."
    vcf_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}