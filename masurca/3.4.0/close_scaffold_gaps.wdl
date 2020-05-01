version 1.0

task CloseScaffoldGaps.sh {
  input {
    String rR
    String qQ
    String tT
    String? mergeMergeScaffoldSsh
  }
  command <<<
    close_scaffold_gaps.sh \
      ~{mergeMergeScaffoldSsh} \
      ~{if defined(rR) then ("-r " +  '"' + rR + '"') else ""} \
      ~{if defined(qQ) then ("-q " +  '"' + qQ + '"') else ""} \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""}
  >>>
}