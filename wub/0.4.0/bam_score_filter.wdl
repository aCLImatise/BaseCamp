version 1.0

task BamScoreFilter.py {
  input {
    String fF
    String sS
    String qQ
    String? inputInputFile
    String? outputOutputFile
  }
  command <<<
    bam_score_filter.py \
      ~{inputInputFile} \
      ~{if defined(fF) then ("-f " +  '"' + fF + '"') else ""} \
      ~{if defined(sS) then ("-s " +  '"' + sS + '"') else ""} \
      ~{if defined(qQ) then ("-q " +  '"' + qQ + '"') else ""} \
      ~{outputOutputFile}
  >>>
}