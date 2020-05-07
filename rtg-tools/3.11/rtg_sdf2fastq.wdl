version 1.0

task RtgSdf2fastq {
  input {
    String inputInput
    File outputOutput
    Int defaultDefaultQuality
    Boolean interleaveInterleave
    Int lineLineLength
    Boolean noNoGzip
  }
  command <<<
    rtg sdf2fastq \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(defaultDefaultQuality) then ("--default-quality " +  '"' + defaultDefaultQuality + '"') else ""} \
      ~{true="--interleave" false="" interleaveInterleave} \
      ~{if defined(lineLineLength) then ("--line-length " +  '"' + lineLineLength + '"') else ""} \
      ~{true="--no-gzip" false="" noNoGzip}
  >>>
}