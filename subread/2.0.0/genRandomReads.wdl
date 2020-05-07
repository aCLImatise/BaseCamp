version 1.0

task GenRandomReads {
  input {
    File transcriptTranscriptFastA
    String expressionExpressionLevels
    Boolean summarizeSummarizeFastA
    File transcriptTranscriptFastA
    String outputOutputPrefix
    Boolean totalTotalReads
    File expressionExpressionLevels
    Int readReadLen
    Int totalTotalReads
    Int randRandSeed
    File qualityQualityRefFile
    Boolean floorFloorStrategy
    Boolean pairedPairedEnd
    Float insertionInsertionLenSigma
    Boolean simpleSimpleTranscriptId
    Boolean truthTruthInReadNames
    Boolean noNoActualReads
  }
  command <<<
    genRandomReads \
      ~{if defined(transcriptTranscriptFastA) then ("--transcriptFasta " +  '"' + transcriptTranscriptFastA + '"') else ""} \
      ~{if defined(expressionExpressionLevels) then ("--expressionLevels " +  '"' + expressionExpressionLevels + '"') else ""} \
      ~{true="--summarizeFasta" false="" summarizeSummarizeFastA} \
      ~{if defined(transcriptTranscriptFastA) then ("--transcriptFasta " +  '"' + transcriptTranscriptFastA + '"') else ""} \
      ~{if defined(outputOutputPrefix) then ("--outputPrefix " +  '"' + outputOutputPrefix + '"') else ""} \
      ~{true="--totalReads" false="" totalTotalReads} \
      ~{if defined(expressionExpressionLevels) then ("--expressionLevels " +  '"' + expressionExpressionLevels + '"') else ""} \
      ~{if defined(readReadLen) then ("--readLen " +  '"' + readReadLen + '"') else ""} \
      ~{if defined(totalTotalReads) then ("--totalReads " +  '"' + totalTotalReads + '"') else ""} \
      ~{if defined(randRandSeed) then ("--randSeed " +  '"' + randRandSeed + '"') else ""} \
      ~{if defined(qualityQualityRefFile) then ("--qualityRefFile " +  '"' + qualityQualityRefFile + '"') else ""} \
      ~{true="--floorStrategy" false="" floorFloorStrategy} \
      ~{true="--pairedEnd" false="" pairedPairedEnd} \
      ~{if defined(insertionInsertionLenSigma) then ("--insertionLenSigma " +  '"' + insertionInsertionLenSigma + '"') else ""} \
      ~{true="--simpleTranscriptId" false="" simpleSimpleTranscriptId} \
      ~{true="--truthInReadNames" false="" truthTruthInReadNames} \
      ~{true="--noActualReads" false="" noNoActualReads}
  >>>
}