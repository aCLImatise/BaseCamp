version 1.0

task Apoc {
  input {
    File? block
    String? p_vol
    String? plen
    Boolean? sod
    Boolean? alignment_printout_none
    String? similarity_scoring_metric
    String? normalize_score_fixed
    Boolean? normalize_score_average
    Boolean? normalize_score_minimum
    Boolean? normalize_score_maximum
    String pdb_file_one
    String pdb_file_two
  }
  command <<<
    apoc \
      ~{pdb_file_one} \
      ~{pdb_file_two} \
      ~{if defined(block) then ("-block " +  '"' + block + '"') else ""} \
      ~{if defined(p_vol) then ("-pvol " +  '"' + p_vol + '"') else ""} \
      ~{if defined(plen) then ("-plen " +  '"' + plen + '"') else ""} \
      ~{true="-sod" false="" sod} \
      ~{true="-v" false="" alignment_printout_none} \
      ~{if defined(similarity_scoring_metric) then ("-m " +  '"' + similarity_scoring_metric + '"') else ""} \
      ~{if defined(normalize_score_fixed) then ("-L " +  '"' + normalize_score_fixed + '"') else ""} \
      ~{true="-a" false="" normalize_score_average} \
      ~{true="-b" false="" normalize_score_minimum} \
      ~{true="-c" false="" normalize_score_maximum}
  >>>
  parameter_meta {
    block: "Load a block of concatenated pdb files."
    p_vol: "Minimal pocket volume in grid points. Default 100"
    plen: "Minimal number of pocket residues. Default 10"
    sod: "Restrict to sequence-order-dependent alignment. Default no restriction."
    alignment_printout_none: "Alignment printout: 0 - none, 1 - concise, 2 - detailed (default)."
    similarity_scoring_metric: "Similarity scoring metric:  tm (TM-score), ps (PS-score, default)."
    normalize_score_fixed: "Normalize the score with a fixed length specified by num."
    normalize_score_average: "Normalize the score by the average size of two structures."
    normalize_score_minimum: "Normalize the score by the minimum size of two structures."
    normalize_score_maximum: "Normalize the score by the maximum size of two structures."
    pdb_file_one: ""
    pdb_file_two: ""
  }
}