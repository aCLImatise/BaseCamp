version 1.0

task Quantify {
  input {
    String inputInputFile
    Boolean oO
    Boolean vV
    String outputOutputSummary
    String outputOutputFilterRocs
    String rocRocFilter
    String rocRocDelta
    String qqQq
    String qqQqHeader
    Boolean rR
    Boolean lL
    Boolean rR
    String rocRocRegions
    String typeType
    Boolean oO
    String limitLimitRecords
    String messageMessageEvery
    Boolean fF
    String countCountHomRef
    String outputOutputVtc
    String cleanCleanInfo
    String outputOutputRocs
    String fixFixChrRegions
    String threadsThreads
    String blockBlockSize
  }
  command <<<
    quantify \
      ~{if defined(inputInputFile) then ("--input-file " +  '"' + inputInputFile + '"') else ""} \
      ~{true="-o" false="" oO} \
      ~{true="-v" false="" vV} \
      ~{if defined(outputOutputSummary) then ("--output-summary " +  '"' + outputOutputSummary + '"') else ""} \
      ~{if defined(outputOutputFilterRocs) then ("--output-filter-rocs " +  '"' + outputOutputFilterRocs + '"') else ""} \
      ~{if defined(rocRocFilter) then ("--roc-filter " +  '"' + rocRocFilter + '"') else ""} \
      ~{if defined(rocRocDelta) then ("--roc-delta " +  '"' + rocRocDelta + '"') else ""} \
      ~{if defined(qqQq) then ("--qq " +  '"' + qqQq + '"') else ""} \
      ~{if defined(qqQqHeader) then ("--qq-header " +  '"' + qqQqHeader + '"') else ""} \
      ~{true="-r" false="" rR} \
      ~{true="-l" false="" lL} \
      ~{true="-R" false="" rR} \
      ~{if defined(rocRocRegions) then ("--roc-regions " +  '"' + rocRocRegions + '"') else ""} \
      ~{if defined(typeType) then ("--type " +  '"' + typeType + '"') else ""} \
      ~{true="-O" false="" oO} \
      ~{if defined(limitLimitRecords) then ("--limit-records " +  '"' + limitLimitRecords + '"') else ""} \
      ~{if defined(messageMessageEvery) then ("--message-every " +  '"' + messageMessageEvery + '"') else ""} \
      ~{true="-f" false="" fF} \
      ~{if defined(countCountHomRef) then ("--count-homref " +  '"' + countCountHomRef + '"') else ""} \
      ~{if defined(outputOutputVtc) then ("--output-vtc " +  '"' + outputOutputVtc + '"') else ""} \
      ~{if defined(cleanCleanInfo) then ("--clean-info " +  '"' + cleanCleanInfo + '"') else ""} \
      ~{if defined(outputOutputRocs) then ("--output-rocs " +  '"' + outputOutputRocs + '"') else ""} \
      ~{if defined(fixFixChrRegions) then ("--fix-chr-regions " +  '"' + fixFixChrRegions + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(blockBlockSize) then ("--blocksize " +  '"' + blockBlockSize + '"') else ""}
  >>>
}