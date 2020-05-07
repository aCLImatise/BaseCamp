version 1.0

task HmmgsMerge {
  input {
    Boolean allAll
    String minMinBits
    String minMinLength
    String outOut
    String shortShortSampleName
  }
  command <<<
    hmmgs merge \
      ~{true="--all" false="" allAll} \
      ~{if defined(minMinBits) then ("--min-bits " +  '"' + minMinBits + '"') else ""} \
      ~{if defined(minMinLength) then ("--min-length " +  '"' + minMinLength + '"') else ""} \
      ~{if defined(outOut) then ("--out " +  '"' + outOut + '"') else ""} \
      ~{if defined(shortShortSampleName) then ("--short_samplename " +  '"' + shortShortSampleName + '"') else ""}
  >>>
}