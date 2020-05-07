version 1.0

task Pullseq {
  input {
    Boolean inputInput
    Boolean namesNames
    Boolean namesNamesStdin
    Boolean regexRegex
    Boolean minMin
    Boolean maxMax
    Boolean lengthLength
    Boolean convertConvert
    Boolean qualityQuality
    Boolean excludedExcluded
    Boolean countCount
    Boolean verboseVerbose
  }
  command <<<
    pullseq \
      ~{true="--input" false="" inputInput} \
      ~{true="--names" false="" namesNames} \
      ~{true="--names_stdin" false="" namesNamesStdin} \
      ~{true="--regex" false="" regexRegex} \
      ~{true="--min" false="" minMin} \
      ~{true="--max" false="" maxMax} \
      ~{true="--length" false="" lengthLength} \
      ~{true="--convert" false="" convertConvert} \
      ~{true="--quality" false="" qualityQuality} \
      ~{true="--excluded" false="" excludedExcluded} \
      ~{true="--count" false="" countCount} \
      ~{true="--verbose" false="" verboseVerbose}
  >>>
}