version 1.0

task CramtoolsQstat {
  input {
    Boolean defaultDefaultQualityScore
    Boolean inputInputFile
    Boolean logLogLevel
  }
  command <<<
    cramtools qstat \
      ~{true="--default-quality-score" false="" defaultDefaultQualityScore} \
      ~{true="--input-file" false="" inputInputFile} \
      ~{true="--log-level" false="" logLogLevel}
  >>>
}