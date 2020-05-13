version 1.0

task BETAMinus {
  input {
    String peakPeakFile
    String genomeGenome
    String referenceReference
    String nameName
    String outputOutput
    String distanceDistance
    Boolean blBl
    String bfBf
    String pnPn
  }
  command <<<
    BETA minus \
      ~{if defined(peakPeakFile) then ("--peakfile " +  '"' + peakPeakFile + '"') else ""} \
      ~{if defined(genomeGenome) then ("--genome " +  '"' + genomeGenome + '"') else ""} \
      ~{if defined(referenceReference) then ("--reference " +  '"' + referenceReference + '"') else ""} \
      ~{if defined(nameName) then ("--name " +  '"' + nameName + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(distanceDistance) then ("--distance " +  '"' + distanceDistance + '"') else ""} \
      ~{true="--bl" false="" blBl} \
      ~{if defined(bfBf) then ("--bf " +  '"' + bfBf + '"') else ""} \
      ~{if defined(pnPn) then ("--pn " +  '"' + pnPn + '"') else ""}
  >>>
}