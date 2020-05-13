version 1.0

task VarscanProcessSomatic {
  input {
    String minMinTumorFreq
    String maxMaxNormalFreq
    String pPValue
  }
  command <<<
    varscan processSomatic \
      ~{if defined(minMinTumorFreq) then ("--min-tumor-freq " +  '"' + minMinTumorFreq + '"') else ""} \
      ~{if defined(maxMaxNormalFreq) then ("--max-normal-freq " +  '"' + maxMaxNormalFreq + '"') else ""} \
      ~{if defined(pPValue) then ("--p-value " +  '"' + pPValue + '"') else ""}
  >>>
}