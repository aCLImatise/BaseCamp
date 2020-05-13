version 1.0

task EnasearchRetrieveData {
  input {
    String idsIds
    String displayDisplay
    String downloadDownload
    File fileFile
    Int offsetOffset
    Int lengthLength
    String subseqSubseqRange
    Boolean expandedExpanded
    Boolean headerHeader
  }
  command <<<
    enasearch retrieve_data \
      ~{if defined(idsIds) then ("--ids " +  '"' + idsIds + '"') else ""} \
      ~{if defined(displayDisplay) then ("--display " +  '"' + displayDisplay + '"') else ""} \
      ~{if defined(downloadDownload) then ("--download " +  '"' + downloadDownload + '"') else ""} \
      ~{if defined(fileFile) then ("--file " +  '"' + fileFile + '"') else ""} \
      ~{if defined(offsetOffset) then ("--offset " +  '"' + offsetOffset + '"') else ""} \
      ~{if defined(lengthLength) then ("--length " +  '"' + lengthLength + '"') else ""} \
      ~{if defined(subseqSubseqRange) then ("--subseq_range " +  '"' + subseqSubseqRange + '"') else ""} \
      ~{true="--expanded" false="" expandedExpanded} \
      ~{true="--header" false="" headerHeader}
  >>>
}