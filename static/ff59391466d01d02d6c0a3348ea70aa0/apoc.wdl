version 1.0

task Apoc {
  input {
    Int? fa
    File? lt
    File? lq
    Boolean? pt
    Boolean? pq
    File? block
    Int? p_vol
    Int? plen
    Boolean? sod
    Boolean? alignment_printout_none
    String? similarity_scoring_metric
    Int? normalize_score_fixed
    Boolean? normalize_score_average
    Boolean? normalize_score_minimum
    Boolean? normalize_score_maximum
    String options
    Int pdb_file_one
    Int pdb_file_two
  }
  command <<<
    apoc \
      ~{options} \
      ~{pdb_file_one} \
      ~{pdb_file_two} \
      ~{if defined(fa) then ("-fa " +  '"' + fa + '"') else ""} \
      ~{if defined(lt) then ("-lt " +  '"' + lt + '"') else ""} \
      ~{if defined(lq) then ("-lq " +  '"' + lq + '"') else ""} \
      ~{if (pt) then "-pt" else ""} \
      ~{if (pq) then "-pq" else ""} \
      ~{if defined(block) then ("-block " +  '"' + block + '"') else ""} \
      ~{if defined(p_vol) then ("-pvol " +  '"' + p_vol + '"') else ""} \
      ~{if defined(plen) then ("-plen " +  '"' + plen + '"') else ""} \
      ~{if (sod) then "-sod" else ""} \
      ~{if (alignment_printout_none) then "-v" else ""} \
      ~{if defined(similarity_scoring_metric) then ("-m " +  '"' + similarity_scoring_metric + '"') else ""} \
      ~{if defined(normalize_score_fixed) then ("-L " +  '"' + normalize_score_fixed + '"') else ""} \
      ~{if (normalize_score_average) then "-a" else ""} \
      ~{if (normalize_score_minimum) then "-b" else ""} \
      ~{if (normalize_score_maximum) then "-c" else ""}
  >>>
  parameter_meta {
    fa: "Global structure alignment: 1 - enable (default), 0 - disable."
    lt: "Provide a list of templates to compare in a file."
    lq: "Provide a list of queries (targets) to compare in a file."
    pt: "<str1,str2,...>\\nNames of pockets in the first (template) structure for comparison."
    pq: "<str1,str2,...>\\nNames of pockets in the second (query) structure for comparison."
    block: "Load a block of concatenated pdb files."
    p_vol: "Minimal pocket volume in grid points. Default 100"
    plen: "Minimal number of pocket residues. Default 10"
    sod: "Restrict to sequence-order-dependent alignment. Default no restriction."
    alignment_printout_none: "Alignment printout: 0 - none, 1 - concise, 2 - detailed (default)."
    similarity_scoring_metric: "Similarity scoring metric:  tm (TM-score), ps (PS-score, default)."
    normalize_score_fixed: "Normalize the score with a fixed length specified by num."
    normalize_score_average: "Normalize the score by the average size of two structures."
    normalize_score_minimum: "Normalize the score by the minimum size of two structures."
    normalize_score_maximum: "Normalize the score by the maximum size of two structures.\\n"
    options: ""
    pdb_file_one: ""
    pdb_file_two: ""
  }
  output {
    File out_stdout = stdout()
  }
}