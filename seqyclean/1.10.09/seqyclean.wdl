version 1.0

task Seqyclean {
  input {
    File turnsTurns
    File turnsTurns
    String commonCommon
    String distanceDistance
    String sizeSize
    Int qualQual
    String bracketBracket
    String windowWindow
    String overwriteOverwrite
    String minimumMinimum
    Boolean polyPolyAt
    String verboseVerbose
    String generateGenerate
    Boolean dupDup
    String noNoAdapterTrim
    String numberNumber
    String outputOutput
    String fastFastAOut
    File usingUsing
    String shuffleShuffle
    String turnsTurns
    File turnsTurns
    String thisThis
    String overlapOverlap
    String newNew2old
    String compressedCompressed
    String maximumMaximum
  }
  command <<<
    seqyclean \
      ~{if defined(turnsTurns) then ("- Turns " +  '"' + turnsTurns + '"') else ""} \
      ~{if defined(turnsTurns) then ("- Turns " +  '"' + turnsTurns + '"') else ""} \
      ~{if defined(commonCommon) then ("- Common " +  '"' + commonCommon + '"') else ""} \
      ~{if defined(distanceDistance) then ("- Distance " +  '"' + distanceDistance + '"') else ""} \
      ~{if defined(sizeSize) then ("- Size " +  '"' + sizeSize + '"') else ""} \
      ~{if defined(qualQual) then ("-qual " +  '"' + qualQual + '"') else ""} \
      ~{if defined(bracketBracket) then ("-bracket " +  '"' + bracketBracket + '"') else ""} \
      ~{if defined(windowWindow) then ("-window " +  '"' + windowWindow + '"') else ""} \
      ~{if defined(overwriteOverwrite) then ("- Overwrite " +  '"' + overwriteOverwrite + '"') else ""} \
      ~{if defined(minimumMinimum) then ("- Minimum " +  '"' + minimumMinimum + '"') else ""} \
      ~{true="-polyat" false="" polyPolyAt} \
      ~{if defined(verboseVerbose) then ("- Verbose " +  '"' + verboseVerbose + '"') else ""} \
      ~{if defined(generateGenerate) then ("- Generate " +  '"' + generateGenerate + '"') else ""} \
      ~{true="-dup" false="" dupDup} \
      ~{if defined(noNoAdapterTrim) then ("-no_adapter_trim " +  '"' + noNoAdapterTrim + '"') else ""} \
      ~{if defined(numberNumber) then ("- Number " +  '"' + numberNumber + '"') else ""} \
      ~{if defined(outputOutput) then ("- Output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(fastFastAOut) then ("-fasta_out " +  '"' + fastFastAOut + '"') else ""} \
      ~{if defined(usingUsing) then ("- Using " +  '"' + usingUsing + '"') else ""} \
      ~{if defined(shuffleShuffle) then ("-shuffle " +  '"' + shuffleShuffle + '"') else ""} \
      ~{if defined(turnsTurns) then ("- Turns " +  '"' + turnsTurns + '"') else ""} \
      ~{if defined(turnsTurns) then ("- Turns " +  '"' + turnsTurns + '"') else ""} \
      ~{if defined(thisThis) then ("- This " +  '"' + thisThis + '"') else ""} \
      ~{if defined(overlapOverlap) then ("-overlap " +  '"' + overlapOverlap + '"') else ""} \
      ~{if defined(newNew2old) then ("-new2old " +  '"' + newNew2old + '"') else ""} \
      ~{if defined(compressedCompressed) then ("- compressed " +  '"' + compressedCompressed + '"') else ""} \
      ~{if defined(maximumMaximum) then ("- Maximum " +  '"' + maximumMaximum + '"') else ""}
  >>>
}