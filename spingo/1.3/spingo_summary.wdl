version 1.0

task SpingoSummary.pyRESULTSFILE {
  input {
    String? level
    String? similarity
    String? threshold
    String spin_go_summary_do_tpy
  }
  command <<<
    spingo_summary.py RESULTS_FILE \
      ~{spin_go_summary_do_tpy} \
      ~{if defined(level) then ("--level " +  '"' + level + '"') else ""} \
      ~{if defined(similarity) then ("--similarity " +  '"' + similarity + '"') else ""} \
      ~{if defined(threshold) then ("--threshold " +  '"' + threshold + '"') else ""}
  >>>
  parameter_meta {
    level: ""
    similarity: ""
    threshold: ""
    spin_go_summary_do_tpy: ""
  }
}