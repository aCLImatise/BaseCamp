version 1.0

task Fimo {
  input {
    Float? alpha
    File? b_file
    Int? max_stored_scores
    Boolean? max_strand
    String? motif
    Float? motif_pseudo
    Boolean? no_q_value
    Boolean? norc
    String? o
    String? oc
    Boolean? parse_genomic_coord
    File? psp
    File? prior_dist
    Boolean? qv_thresh
    Boolean? skip_matched_sequence
    Boolean? text
    Float? thresh
    Boolean? verbosity
    File motif_file
    File sequence_file
  }
  command <<<
    fimo \
      ~{motif_file} \
      ~{sequence_file} \
      ~{if defined(alpha) then ("--alpha " +  '"' + alpha + '"') else ""} \
      ~{if defined(b_file) then ("--bfile " +  '"' + b_file + '"') else ""} \
      ~{if defined(max_stored_scores) then ("--max-stored-scores " +  '"' + max_stored_scores + '"') else ""} \
      ~{if (max_strand) then "--max-strand" else ""} \
      ~{if defined(motif) then ("--motif " +  '"' + motif + '"') else ""} \
      ~{if defined(motif_pseudo) then ("--motif-pseudo " +  '"' + motif_pseudo + '"') else ""} \
      ~{if (no_q_value) then "--no-qvalue" else ""} \
      ~{if (norc) then "--norc" else ""} \
      ~{if defined(o) then ("--o " +  '"' + o + '"') else ""} \
      ~{if defined(oc) then ("--oc " +  '"' + oc + '"') else ""} \
      ~{if (parse_genomic_coord) then "--parse-genomic-coord" else ""} \
      ~{if defined(psp) then ("--psp " +  '"' + psp + '"') else ""} \
      ~{if defined(prior_dist) then ("--prior-dist " +  '"' + prior_dist + '"') else ""} \
      ~{if (qv_thresh) then "--qv-thresh" else ""} \
      ~{if (skip_matched_sequence) then "--skip-matched-sequence" else ""} \
      ~{if (text) then "--text" else ""} \
      ~{if defined(thresh) then ("--thresh " +  '"' + thresh + '"') else ""} \
      ~{if (verbosity) then "--verbosity" else ""}
  >>>
  parameter_meta {
    alpha: "(default 1.0)"
    b_file: "(DNA and protein use NRDB by default)"
    max_stored_scores: "(default=100000)"
    max_strand: ""
    motif: "(default=all)"
    motif_pseudo: "(default=0.1)"
    no_q_value: ""
    norc: ""
    o: "(default=fimo_out)"
    oc: "(default=fimo_out)"
    parse_genomic_coord: ""
    psp: "(default none)"
    prior_dist: "(default none)"
    qv_thresh: ""
    skip_matched_sequence: ""
    text: ""
    thresh: "(default = 1e-4)"
    verbosity: "[1|2|3|4] (default 2)"
    motif_file: ""
    sequence_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}