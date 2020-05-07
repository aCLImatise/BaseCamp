version 1.0

task CreateFakeGenome.py {
  input {
    String locusLocus
    Boolean strandStrand
    String outputOutputPrefix
  }
  command <<<
    create_fake_genome.py \
      ~{if defined(locusLocus) then ("--locus " +  '"' + locusLocus + '"') else ""} \
      ~{true="--strand" false="" strandStrand} \
      ~{if defined(outputOutputPrefix) then ("--output_prefix " +  '"' + outputOutputPrefix + '"') else ""}
  >>>
}