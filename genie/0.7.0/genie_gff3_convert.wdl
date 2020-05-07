version 1.0

task GenieGff3Convert {
  input {
    String attributesAttributes
    Boolean endEnd
    String fileFilePath
    Boolean headerHeader
    Int limitLimit
    Boolean phasePhase
    String replacementReplacement
    Boolean scoreScore
    String separatorSeparator
    Boolean seqSeqId
    Boolean sourceSource
    Boolean startStart
    Boolean strandStrand
    Boolean typeType
    String? flagsFlags
  }
  command <<<
    genie gff3 convert \
      ~{flagsFlags} \
      ~{if defined(attributesAttributes) then ("--attributes " +  '"' + attributesAttributes + '"') else ""} \
      ~{true="--end" false="" endEnd} \
      ~{if defined(fileFilePath) then ("--filepath " +  '"' + fileFilePath + '"') else ""} \
      ~{true="--header" false="" headerHeader} \
      ~{if defined(limitLimit) then ("--limit " +  '"' + limitLimit + '"') else ""} \
      ~{true="--phase" false="" phasePhase} \
      ~{if defined(replacementReplacement) then ("--replacement " +  '"' + replacementReplacement + '"') else ""} \
      ~{true="--score" false="" scoreScore} \
      ~{if defined(separatorSeparator) then ("--separator " +  '"' + separatorSeparator + '"') else ""} \
      ~{true="--seqid" false="" seqSeqId} \
      ~{true="--source" false="" sourceSource} \
      ~{true="--start" false="" startStart} \
      ~{true="--strand" false="" strandStrand} \
      ~{true="--type" false="" typeType}
  >>>
}