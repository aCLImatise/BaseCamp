version 1.0

task OutriggerValidate {
  input {
    String fastFastA
    String genomeGenome
    String indexIndex
    String outputOutput
    String validValidSpliceSites
    Boolean debugDebug
    Boolean lowLowMemory
  }
  command <<<
    outrigger validate \
      ~{if defined(fastFastA) then ("--fasta " +  '"' + fastFastA + '"') else ""} \
      ~{if defined(genomeGenome) then ("--genome " +  '"' + genomeGenome + '"') else ""} \
      ~{if defined(indexIndex) then ("--index " +  '"' + indexIndex + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(validValidSpliceSites) then ("--valid-splice-sites " +  '"' + validValidSpliceSites + '"') else ""} \
      ~{true="--debug" false="" debugDebug} \
      ~{true="--low-memory" false="" lowLowMemory}
  >>>
}