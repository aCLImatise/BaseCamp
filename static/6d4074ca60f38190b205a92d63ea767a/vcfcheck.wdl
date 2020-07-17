version 1.0

task Vcfcheck {
  input {
    Boolean? fast_a_reference
    String? exclude_failures
    Boolean? keep_failures
    String vcf_file
  }
  command <<<
    vcfcheck \
      ~{vcf_file} \
      ~{true="--fasta-reference" false="" fast_a_reference} \
      ~{if defined(exclude_failures) then ("--exclude-failures " +  '"' + exclude_failures + '"') else ""} \
      ~{true="--keep-failures" false="" keep_failures}
  >>>
  parameter_meta {
    fast_a_reference: "FASTA reference file to use to obtain primer sequences"
    exclude_failures: "a record fails, don't print it.  Otherwise do."
    keep_failures: "Print if the record fails, otherwise not."
    vcf_file: ""
  }
}