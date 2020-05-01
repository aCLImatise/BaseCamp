version 1.0

task SpoTyping.py {
  input {
    Boolean seqSeq
    String swiftSwift
    Int minMin
    Int rmRmIn
    String outdirOutdir
    String outputOutput
    Boolean noNoQuery
    Boolean filterFilter
    Boolean sortedSorted
    Boolean debugDebug
  }
  command <<<
    SpoTyping.py \
      ~{true="--seq" false="" seqSeq} \
      ~{if defined(swiftSwift) then ("--swift " +  '"' + swiftSwift + '"') else ""} \
      ~{if defined(minMin) then ("--min " +  '"' + minMin + '"') else ""} \
      ~{if defined(rmRmIn) then ("--rmin " +  '"' + rmRmIn + '"') else ""} \
      ~{if defined(outdirOutdir) then ("--outdir " +  '"' + outdirOutdir + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{true="--noQuery" false="" noNoQuery} \
      ~{true="--filter" false="" filterFilter} \
      ~{true="--sorted" false="" sortedSorted} \
      ~{true="--debug" false="" debugDebug}
  >>>
}