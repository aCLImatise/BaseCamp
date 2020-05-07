version 1.0

task UMIBCErrorCorrect.py {
  input {
    String bcBcRankFile
    Boolean onlyOnlyTopRanked
    String dropDropSeqCleanReport
    String dropDropSeqSynthesisReport
    String? inputInputCsv
    String? outputOutputCsv
  }
  command <<<
    UMI_BC_error_correct.py \
      ~{inputInputCsv} \
      ~{if defined(bcBcRankFile) then ("--bc_rank_file " +  '"' + bcBcRankFile + '"') else ""} \
      ~{true="--only_top_ranked" false="" onlyOnlyTopRanked} \
      ~{if defined(dropDropSeqCleanReport) then ("--dropseq_clean_report " +  '"' + dropDropSeqCleanReport + '"') else ""} \
      ~{if defined(dropDropSeqSynthesisReport) then ("--dropseq_synthesis_report " +  '"' + dropDropSeqSynthesisReport + '"') else ""} \
      ~{outputOutputCsv}
  >>>
}