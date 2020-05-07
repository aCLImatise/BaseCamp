version 1.0

task CramtoolsGetref {
  input {
    Boolean destinationDestinationFile
    Boolean fastFastALineLength
    Boolean gzipGzip
    Boolean ignoreIgnoreNotFound
    Boolean inputInputFile
    Boolean logLogLevel
  }
  command <<<
    cramtools getref \
      ~{true="--destination-file" false="" destinationDestinationFile} \
      ~{true="--fasta-line-length" false="" fastFastALineLength} \
      ~{true="--gzip" false="" gzipGzip} \
      ~{true="--ignore-not-found" false="" ignoreIgnoreNotFound} \
      ~{true="--input-file" false="" inputInputFile} \
      ~{true="--log-level" false="" logLogLevel}
  >>>
}