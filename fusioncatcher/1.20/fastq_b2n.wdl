version 1.0

task FastqB2n.py {
  input {
    String inputInput
    String outputOutput
    Boolean findFind
    Boolean ambiguousAmbiguous
    Boolean sangerSanger
    String replacementReplacement
    String thresholdThreshold
  }
  command <<<
    fastq_b2n.py \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{true="--find" false="" findFind} \
      ~{true="--ambiguous" false="" ambiguousAmbiguous} \
      ~{true="--sanger" false="" sangerSanger} \
      ~{if defined(replacementReplacement) then ("--replacement " +  '"' + replacementReplacement + '"') else ""} \
      ~{if defined(thresholdThreshold) then ("--threshold " +  '"' + thresholdThreshold + '"') else ""}
  >>>
}