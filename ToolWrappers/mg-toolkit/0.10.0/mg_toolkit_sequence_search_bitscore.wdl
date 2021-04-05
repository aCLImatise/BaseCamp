version 1.0

task MgtoolkitSequenceSearchBitscore {
  input {
    Int? seq_bit_score_threshold
    Int? hit_bit_score_threshold
    Int? report_seq_bit_score_threshold
    Int? report_hit_bit_score_threshold
  }
  command <<<
    mg_toolkit sequence_search bitscore \
      ~{if defined(seq_bit_score_threshold) then ("--seq-bitscore-threshold " +  '"' + seq_bit_score_threshold + '"') else ""} \
      ~{if defined(hit_bit_score_threshold) then ("--hit-bitscore-threshold " +  '"' + hit_bit_score_threshold + '"') else ""} \
      ~{if defined(report_seq_bit_score_threshold) then ("--report-seq-bitscore-threshold " +  '"' + report_seq_bit_score_threshold + '"') else ""} \
      ~{if defined(report_hit_bit_score_threshold) then ("--report-hit-bitscore-threshold " +  '"' + report_hit_bit_score_threshold + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/mg-toolkit:0.10.0--py_0"
  }
  parameter_meta {
    seq_bit_score_threshold: "Sequence bit score threshold. Accepted values x > 0\\n(default: 25)."
    hit_bit_score_threshold: "Hit bit score threshold. Accepted values x > 0\\n(default: 23)."
    report_seq_bit_score_threshold: "Sequence E-value threshold (reporting). Accepted\\nvalues x > 0 (default: 7)."
    report_hit_bit_score_threshold: "Hit E-value threshold (reporting). Accepted values x >\\n0 (default: 5).\\n"
  }
  output {
    File out_stdout = stdout()
  }
}