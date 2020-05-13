version 1.0

task MbGenerateNegativeSet {
  input {
    String numberNumber
    String widthWidth
    Boolean verboseVerbose
    String? gffGff
    String? genomeGenome
    String? prefixPrefix
    String? outdirOutdir
  }
  command <<<
    mb-generate-negative-set \
      ~{gffGff} \
      ~{if defined(numberNumber) then ("--number " +  '"' + numberNumber + '"') else ""} \
      ~{if defined(widthWidth) then ("--width " +  '"' + widthWidth + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{genomeGenome} \
      ~{prefixPrefix} \
      ~{outdirOutdir}
  >>>
}