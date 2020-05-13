version 1.0

task HisatgenotypeHlaCyp.py {
  input {
    String excludeExcludeAlleleList
    String numNumMismatch
    Boolean verboseVerbose
    String debugDebug
    Boolean novelNovelAlleleDetection
  }
  command <<<
    hisatgenotype_hla_cyp.py \
      ~{if defined(excludeExcludeAlleleList) then ("--exclude-allele-list " +  '"' + excludeExcludeAlleleList + '"') else ""} \
      ~{if defined(numNumMismatch) then ("--num-mismatch " +  '"' + numNumMismatch + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{if defined(debugDebug) then ("--debug " +  '"' + debugDebug + '"') else ""} \
      ~{true="--novel_allele_detection" false="" novelNovelAlleleDetection}
  >>>
}