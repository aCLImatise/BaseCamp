version 1.0

task Vcfentropy {
  input {
    Boolean? fast_a_reference
    Boolean? window_size
    String vcf_file
  }
  command <<<
    vcfentropy \
      ~{vcf_file} \
      ~{true="--fasta-reference" false="" fast_a_reference} \
      ~{true="--window-size" false="" window_size}
  >>>
  parameter_meta {
    fast_a_reference: "FASTA reference file to use to obtain flanking sequences"
    window_size: "Size of the window over which to calculate entropy"
    vcf_file: ""
  }
}