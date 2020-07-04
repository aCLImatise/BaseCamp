version 1.0

task Gvcfgenotyper {
  input {
    Boolean? list
    Boolean? fast_a_ref
    Boolean? output_file
    Boolean? log_file
    Boolean? output_type
    Boolean? region
    Boolean? max_alleles
  }
  command <<<
    gvcfgenotyper \
      ~{true="--list" false="" list} \
      ~{true="--fasta-ref" false="" fast_a_ref} \
      ~{true="--output-file" false="" output_file} \
      ~{true="--log-file" false="" log_file} \
      ~{true="--output-type" false="" output_type} \
      ~{true="--region" false="" region} \
      ~{true="--max-alleles" false="" max_alleles}
  >>>
  parameter_meta {
    list: "<file>          plain text list of gvcfs to merge"
    fast_a_ref: "<file>          reference sequence"
    output_file: "<file>          output file name [stdout]"
    log_file: "<file>          logging information"
    output_type: "<b|u|z|v>       b: compressed BCF, u: uncompressed BCF, z: compressed VCF, v: uncompressed VCF [v]"
    region: "<region>        region to genotype eg. chr1 or chr20:5000000-6000000"
    max_alleles: "INT             maximum number of alleles [50]"
  }
}