version 1.0

task QuasitoolsDistance {
  input {
    Boolean? normalize
    Boolean? output_distance
    Int? startpos
    Int? endpos
    File? output_quasispecies_distance
    Boolean? truncate
    Boolean? remove_no_coverage
    Boolean? keep_no_coverage
    String reference
    String? bam
  }
  command <<<
    quasitools distance \
      ~{reference} \
      ~{bam} \
      ~{true="--normalize" false="" normalize} \
      ~{true="--output_distance" false="" output_distance} \
      ~{if defined(startpos) then ("--startpos " +  '"' + startpos + '"') else ""} \
      ~{if defined(endpos) then ("--endpos " +  '"' + endpos + '"') else ""} \
      ~{if defined(output_quasispecies_distance) then ("--output " +  '"' + output_quasispecies_distance + '"') else ""} \
      ~{true="--truncate" false="" truncate} \
      ~{true="--remove_no_coverage" false="" remove_no_coverage} \
      ~{true="--keep_no_coverage" false="" keep_no_coverage}
  >>>
  parameter_meta {
    normalize: "/ -dn, --dont_normalize Normalize read count data so that the read counts per 4-tuple (A, C, T, G) sum to one."
    output_distance: "/ -os, --output_similarity Output an angular distance matrix (by default), or output a cosine similarity matrix (cosine similarity is not a metric)"
    startpos: "Set the start base position of the reference to use in the distance or similarity calculation. Start position is one-indexed. I.e. it must be between one and the total length of the reference sequence(s), inclusive."
    endpos: "Set the end base position of the reference to use in the distance or similarity calculation. End position is one-indexed. I.e. it must be between one and the total length of the reference sequence(s), inclusive."
    output_quasispecies_distance: "Output the quasispecies distance or similarity matrix in CSV format in a file."
    truncate: "Ignore contiguous start and end pileup regions with no coverage."
    remove_no_coverage: "Ignore all pileup regions with no coverage."
    keep_no_coverage: "Do not ignore pileup regions with no coverage."
    reference: ""
    bam: ""
  }
}