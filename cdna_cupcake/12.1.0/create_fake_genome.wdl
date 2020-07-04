version 1.0

task CreateFakeGenome.py {
  input {
    String? locus
    Boolean? strand
    String? output_prefix
  }
  command <<<
    create_fake_genome.py \
      ~{if defined(locus) then ("--locus " +  '"' + locus + '"') else ""} \
      ~{true="--strand" false="" strand} \
      ~{if defined(output_prefix) then ("--output_prefix " +  '"' + output_prefix + '"') else ""}
  >>>
  parameter_meta {
    locus: "locus in format <chr>:<start>-<end>"
    strand: "{+,-}        strand of locus"
    output_prefix: "Output prefix"
  }
}