version 1.0

task Winextract {
  input {
    File genomeGenome
    File inInBed
    File outputOutput
    String windowWindow
    Boolean uowUow
    Boolean asnAsn
  }
  command <<<
    winextract \
      ~{if defined(genomeGenome) then ("--genome " +  '"' + genomeGenome + '"') else ""} \
      ~{if defined(inInBed) then ("--in-bed " +  '"' + inInBed + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(windowWindow) then ("--window " +  '"' + windowWindow + '"') else ""} \
      ~{true="--uow" false="" uowUow} \
      ~{true="--asn" false="" asnAsn}
  >>>
}