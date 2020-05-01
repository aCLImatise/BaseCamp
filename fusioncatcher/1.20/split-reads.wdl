version 1.0

task SplitReads.py {
  input {
    String inputInput
    String listList
    String outputOutput1
    String outputOutput2
    String wiggleWiggleSize
    String gapGapSize
    String anchorAnchorSize
    String anchorAnchorSizeMax
    String replaceReplaceSolexaIds
    String bufferBufferSize
    Boolean outputOutput2Rc
  }
  command <<<
    split-reads.py \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(listList) then ("--list " +  '"' + listList + '"') else ""} \
      ~{if defined(outputOutput1) then ("--output-1 " +  '"' + outputOutput1 + '"') else ""} \
      ~{if defined(outputOutput2) then ("--output-2 " +  '"' + outputOutput2 + '"') else ""} \
      ~{if defined(wiggleWiggleSize) then ("--wiggle-size " +  '"' + wiggleWiggleSize + '"') else ""} \
      ~{if defined(gapGapSize) then ("--gap-size " +  '"' + gapGapSize + '"') else ""} \
      ~{if defined(anchorAnchorSize) then ("--anchor-size " +  '"' + anchorAnchorSize + '"') else ""} \
      ~{if defined(anchorAnchorSizeMax) then ("--anchor-size-max " +  '"' + anchorAnchorSizeMax + '"') else ""} \
      ~{if defined(replaceReplaceSolexaIds) then ("--replace-solexa-ids " +  '"' + replaceReplaceSolexaIds + '"') else ""} \
      ~{if defined(bufferBufferSize) then ("--buffer-size " +  '"' + bufferBufferSize + '"') else ""} \
      ~{true="--output-2-rc" false="" outputOutput2Rc}
  >>>
}