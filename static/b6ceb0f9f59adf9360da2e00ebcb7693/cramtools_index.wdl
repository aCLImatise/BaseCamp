version 1.0

task CramtoolsIndex {
  input {
    Boolean indexIndexFile
    Boolean indexIndexFormat
    Boolean inputInputFile
    Boolean logLogLevel
  }
  command <<<
    cramtools index \
      ~{true="--index-file" false="" indexIndexFile} \
      ~{true="--index-format" false="" indexIndexFormat} \
      ~{true="--input-file" false="" inputInputFile} \
      ~{true="--log-level" false="" logLogLevel}
  >>>
}