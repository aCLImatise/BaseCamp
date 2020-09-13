version 1.0

task QuasitoolsDistance {
  input {
    Boolean? normalize
    Boolean? output_distance
    Int? startpos
    Int? endpos
    File? output_distance_matrix
    Boolean? truncate
    Boolean? remove_no_coverage
    Boolean? keep_no_coverage
    String pile_up_dot
    String coverage_dot
  }
  command <<<
    quasitools distance \
      ~{pile_up_dot} \
      ~{coverage_dot} \
      ~{if (normalize) then "--normalize" else ""} \
      ~{if (output_distance) then "--output_distance" else ""} \
      ~{if defined(startpos) then ("--startpos " +  '"' + startpos + '"') else ""} \
      ~{if defined(endpos) then ("--endpos " +  '"' + endpos + '"') else ""} \
      ~{if defined(output_distance_matrix) then ("--output " +  '"' + output_distance_matrix + '"') else ""} \
      ~{if (truncate) then "--truncate" else ""} \
      ~{if (remove_no_coverage) then "--remove_no_coverage" else ""} \
      ~{if (keep_no_coverage) then "--keep_no_coverage" else ""}
  >>>
  parameter_meta {
    normalize: "/ -dn, --dont_normalize\\nNormalize read count data so that the read\\ncounts per 4-tuple (A, C, T, G) sum to one."
    output_distance: "/ -os, --output_similarity\\nOutput an angular distance matrix (by\\ndefault), or output a cosine similarity\\nmatrix (cosine similarity is not a metric)"
    startpos: "Set the start base position of the reference\\nto use in the distance or similarity\\ncalculation. Start position is one-indexed.\\nI.e. it must be between one and the total\\nlength of the reference sequence(s),\\ninclusive."
    endpos: "Set the end base position of the reference\\nto use in the distance or similarity\\ncalculation. End position is one-indexed.\\nI.e. it must be between one and the total\\nlength of the reference sequence(s),\\ninclusive."
    output_distance_matrix: "Output the quasispecies distance or\\nsimilarity matrix in CSV format in a file."
    truncate: "Ignore contiguous start and end pileup\\nregions with no coverage."
    remove_no_coverage: "Ignore all pileup regions with no coverage."
    keep_no_coverage: "Do not ignore pileup regions with no"
    pile_up_dot: "Normalization is done dividing base read counts (A, C, T, G) inside every"
    coverage_dot: "--help                          Show this message and exit."
  }
  output {
    File out_stdout = stdout()
    File out_output_distance_matrix = "${in_output_distance_matrix}"
  }
}