version 1.0

task CIRCexplorer2Annotate {
  input {
    String refRef
    String genomeGenome
    String bedBed
    String outputOutput
    Boolean noNoFix
    Boolean lowLowConfidence
  }
  command <<<
    CIRCexplorer2 annotate \
      ~{if defined(refRef) then ("--ref " +  '"' + refRef + '"') else ""} \
      ~{if defined(genomeGenome) then ("--genome " +  '"' + genomeGenome + '"') else ""} \
      ~{if defined(bedBed) then ("--bed " +  '"' + bedBed + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{true="--no-fix" false="" noNoFix} \
      ~{true="--low-confidence" false="" lowLowConfidence}
  >>>
}