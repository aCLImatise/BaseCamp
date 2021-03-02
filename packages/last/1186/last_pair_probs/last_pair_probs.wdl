version 1.0

task Lastpairprobs {
  input {
    Boolean? rna
    Boolean? est_dist
    Float? mis_map
    String? fra_glen
    String? sdev
    Float? disjoint
    String? circular
    Int alignments_one
  }
  command <<<
    last_pair_probs \
      ~{alignments_one} \
      ~{if (rna) then "--rna" else ""} \
      ~{if (est_dist) then "--estdist" else ""} \
      ~{if defined(mis_map) then ("--mismap " +  '"' + mis_map + '"') else ""} \
      ~{if defined(fra_glen) then ("--fraglen " +  '"' + fra_glen + '"') else ""} \
      ~{if defined(sdev) then ("--sdev " +  '"' + sdev + '"') else ""} \
      ~{if defined(disjoint) then ("--disjoint " +  '"' + disjoint + '"') else ""} \
      ~{if defined(circular) then ("--circular " +  '"' + circular + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/last:1186--h8b12597_0"
  }
  parameter_meta {
    rna: "assume the reads are from potentially-spliced RNA"
    est_dist: "just estimate the distribution of distances"
    mis_map: "don't write alignments with mismap probability > M\\n(default: 0.01)"
    fra_glen: "mean distance in bp"
    sdev: "standard deviation of distance"
    disjoint: "prior probability of disjoint mapping (default: 0.02\\nif -r, else 0.01)"
    circular: "specifies that chromosome CHROM is circular (default:\\nchrM)"
    alignments_one: ""
  }
  output {
    File out_stdout = stdout()
  }
}