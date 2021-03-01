version 1.0

task Fimo {
  input {
    Float? alpha
    File? b_file
    Int? max_stored_scores
    Int? max_strand
    Float? motif_pseudo
    String? no_q_value
    String? oc
    File? parse_genomic_coord
    File? prior_dist
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
      ~{if defined(max_strand) then ("--max-strand " +  '"' + max_strand + '"') else ""} \
      ~{if defined(motif_pseudo) then ("--motif-pseudo " +  '"' + motif_pseudo + '"') else ""} \
      ~{if defined(no_q_value) then ("--no-qvalue " +  '"' + no_q_value + '"') else ""} \
      ~{if defined(oc) then ("--oc " +  '"' + oc + '"') else ""} \
      ~{if defined(parse_genomic_coord) then ("--parse-genomic-coord " +  '"' + parse_genomic_coord + '"') else ""} \
      ~{if defined(prior_dist) then ("--prior-dist " +  '"' + prior_dist + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/meme:5.3.0--py38pl526hc1f1133_0"
  }
  parameter_meta {
    alpha: "(default 1.0)"
    b_file: "(DNA and protein use NRDB by default)"
    max_stored_scores: "(default=100000)"
    max_strand: "(default=all)"
    motif_pseudo: "(default=0.1)"
    no_q_value: "(default=fimo_out)"
    oc: "(default=fimo_out)"
    parse_genomic_coord: "(default none)"
    prior_dist: "(default none)"
    motif_file: ""
    sequence_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}