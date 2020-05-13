version 1.0

task EmblApiValidator {
  input {
    Boolean assemblyAssembly
    Boolean deDe
    Boolean fF
    Boolean filterFilter
    Boolean fixFix
    Boolean fixFixDiagnose
    Boolean lL
    Boolean lowLowMemory
    Boolean minMinGapLength
    Boolean prefixPrefix
    Boolean rR
    Boolean skipSkip
    Boolean versionVersion
    Boolean wrapWrap
  }
  command <<<
    embl-api-validator \
      ~{true="-assembly" false="" assemblyAssembly} \
      ~{true="-de" false="" deDe} \
      ~{true="-f" false="" fF} \
      ~{true="-filter" false="" filterFilter} \
      ~{true="-fix" false="" fixFix} \
      ~{true="-fix_diagnose" false="" fixFixDiagnose} \
      ~{true="-l" false="" lL} \
      ~{true="-lowmemory" false="" lowLowMemory} \
      ~{true="-min_gap_length" false="" minMinGapLength} \
      ~{true="-prefix" false="" prefixPrefix} \
      ~{true="-r" false="" rR} \
      ~{true="-skip" false="" skipSkip} \
      ~{true="-version" false="" versionVersion} \
      ~{true="-wrap" false="" wrapWrap}
  >>>
}