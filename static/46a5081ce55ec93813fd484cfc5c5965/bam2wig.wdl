version 1.0

task Bam2wig {
  input {
    Boolean? allows_specify_region
    Boolean? string_might_provided
  }
  command <<<
    bam2wig \
      ~{true="-r" false="" allows_specify_region} \
      ~{true="-t" false="" string_might_provided}
  >>>
  parameter_meta {
    allows_specify_region: "Allows to specify a target region, e.g. 'chr3L:10-250' This option can only be used if an index file exists See: samtools index "
    string_might_provided: "A string might be provided as track name"
  }
}