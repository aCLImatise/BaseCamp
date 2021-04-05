version 1.0

task MgtoolkitSequenceSearchEvalue {
  input {
    Float? seq_evalue_threshold
    Float? hit_evalue_threshold
    Int? report_seq_evalue_threshold
    Int? report_hit_evalue_threshold
  }
  command <<<
    mg_toolkit sequence_search evalue \
      ~{if defined(seq_evalue_threshold) then ("--seq-evalue-threshold " +  '"' + seq_evalue_threshold + '"') else ""} \
      ~{if defined(hit_evalue_threshold) then ("--hit-evalue-threshold " +  '"' + hit_evalue_threshold + '"') else ""} \
      ~{if defined(report_seq_evalue_threshold) then ("--report-seq-evalue-threshold " +  '"' + report_seq_evalue_threshold + '"') else ""} \
      ~{if defined(report_hit_evalue_threshold) then ("--report-hit-evalue-threshold " +  '"' + report_hit_evalue_threshold + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/mg-toolkit:0.10.0--py_0"
  }
  parameter_meta {
    seq_evalue_threshold: "Sequence E-value threshold. Accepted value 0 < x ≤ 10\\n(default: 0.01)."
    hit_evalue_threshold: "Hit E-value threshold. Accepted value 0 < x ≤ 10\\n(default: 0.03)."
    report_seq_evalue_threshold: "Sequence E-value threshold (reporting).Accepted value\\n0 < x ≤ 10 (default: 1)."
    report_hit_evalue_threshold: "Hit E-value threshold (reporting). Accepted value 0 <\\nx ≤ 10 (default: 1).\\n"
  }
  output {
    File out_stdout = stdout()
  }
}