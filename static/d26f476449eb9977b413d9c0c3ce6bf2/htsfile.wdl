version 1.0

task Htsfile {
  input {
    Boolean viewView
    Boolean copyCopy
    Boolean noNoHeader
    Boolean verboseVerbose
    File? fileFile
  }
  command <<<
    htsfile \
      ~{fileFile} \
      ~{true="--view" false="" viewView} \
      ~{true="--copy" false="" copyCopy} \
      ~{true="--no-header" false="" noNoHeader} \
      ~{true="--verbose" false="" verboseVerbose}
  >>>
}