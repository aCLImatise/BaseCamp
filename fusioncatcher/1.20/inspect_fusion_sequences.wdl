version 1.0

task InspectFusionSequences.py {
  input {
    String inputInput
    String outputOutput
    String overlapOverlap
    String lengthLength
    String kmKmEr
    String polyPoly
    String thresholdThreshold
    String thresholdThreshold2
    Boolean quietQuiet
    String authorAuthor
  }
  command <<<
    inspect_fusion_sequences.py \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(overlapOverlap) then ("--overlap " +  '"' + overlapOverlap + '"') else ""} \
      ~{if defined(lengthLength) then ("--length " +  '"' + lengthLength + '"') else ""} \
      ~{if defined(kmKmEr) then ("--kmer " +  '"' + kmKmEr + '"') else ""} \
      ~{if defined(polyPoly) then ("--poly " +  '"' + polyPoly + '"') else ""} \
      ~{if defined(thresholdThreshold) then ("--threshold " +  '"' + thresholdThreshold + '"') else ""} \
      ~{if defined(thresholdThreshold2) then ("--threshold2 " +  '"' + thresholdThreshold2 + '"') else ""} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{if defined(authorAuthor) then ("--author " +  '"' + authorAuthor + '"') else ""}
  >>>
}