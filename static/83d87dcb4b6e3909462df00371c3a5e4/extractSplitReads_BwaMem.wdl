version 1.0

task ExtractSplitReadsBwaMem {
  input {
    File inInFile
    Int numNumSplits
    Boolean includedIncludedUps
    Int minMinNonOverlap
  }
  command <<<
    extractSplitReads_BwaMem \
      ~{if defined(inInFile) then ("--inFile " +  '"' + inInFile + '"') else ""} \
      ~{if defined(numNumSplits) then ("--numSplits " +  '"' + numNumSplits + '"') else ""} \
      ~{true="--includeDups" false="" includedIncludedUps} \
      ~{if defined(minMinNonOverlap) then ("--minNonOverlap " +  '"' + minMinNonOverlap + '"') else ""}
  >>>
}