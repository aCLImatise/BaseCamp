version 1.0

task Vcfprimers {
  input {
    Boolean? fast_a_reference
    Boolean? primer_length
    String vcf_file
  }
  command <<<
    vcfprimers \
      ~{vcf_file} \
      ~{true="--fasta-reference" false="" fast_a_reference} \
      ~{true="--primer-length" false="" primer_length}
  >>>
  parameter_meta {
    fast_a_reference: "FASTA reference file to use to obtain primer sequences"
    primer_length: "The length of the primer sequences on each side of the variant"
    vcf_file: ""
  }
}