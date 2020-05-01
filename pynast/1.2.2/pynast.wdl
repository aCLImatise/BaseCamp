version 1.0

task Pynast {
  input {
    String templateTemplateFp
    String inputInputFp
    Boolean verboseVerbose
    Int minMinPctId
    Int minMinLen
    String pairwisePairwiseAlignmentMethod
    String fastFastAOutFp
    String logLogFp
    String failureFailureFp
    String tempTempDir
    Int maxMaxEValue
    String blastBlastDb
  }
  command <<<
    pynast \
      ~{if defined(templateTemplateFp) then ("--template_fp " +  '"' + templateTemplateFp + '"') else ""} \
      ~{if defined(inputInputFp) then ("--input_fp " +  '"' + inputInputFp + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{if defined(minMinPctId) then ("--min_pct_id " +  '"' + minMinPctId + '"') else ""} \
      ~{if defined(minMinLen) then ("--min_len " +  '"' + minMinLen + '"') else ""} \
      ~{if defined(pairwisePairwiseAlignmentMethod) then ("--pairwise_alignment_method " +  '"' + pairwisePairwiseAlignmentMethod + '"') else ""} \
      ~{if defined(fastFastAOutFp) then ("--fasta_out_fp " +  '"' + fastFastAOutFp + '"') else ""} \
      ~{if defined(logLogFp) then ("--log_fp " +  '"' + logLogFp + '"') else ""} \
      ~{if defined(failureFailureFp) then ("--failure_fp " +  '"' + failureFailureFp + '"') else ""} \
      ~{if defined(tempTempDir) then ("--temp_dir " +  '"' + tempTempDir + '"') else ""} \
      ~{if defined(maxMaxEValue) then ("--max_e_value " +  '"' + maxMaxEValue + '"') else ""} \
      ~{if defined(blastBlastDb) then ("--blast_db " +  '"' + blastBlastDb + '"') else ""}
  >>>
}