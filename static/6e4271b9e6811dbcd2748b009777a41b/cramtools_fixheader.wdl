version 1.0

task CramtoolsFixheader {
  input {
    Boolean confirmConfirmMd5
    Boolean injectInjectUri
    Boolean inputInputCramFile
    Boolean referenceReferenceFastAFile
    Boolean uriUriPattern
    Boolean logLogLevel
  }
  command <<<
    cramtools fixheader \
      ~{true="--confirm-md5" false="" confirmConfirmMd5} \
      ~{true="--inject-uri" false="" injectInjectUri} \
      ~{true="--input-cram-file" false="" inputInputCramFile} \
      ~{true="--reference-fasta-file" false="" referenceReferenceFastAFile} \
      ~{true="--uri-pattern" false="" uriUriPattern} \
      ~{true="--log-level" false="" logLogLevel}
  >>>
}