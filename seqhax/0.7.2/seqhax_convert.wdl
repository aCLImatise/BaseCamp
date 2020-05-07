version 1.0

task SeqhaxConvert {
  input {
    Boolean aA
    Boolean qQ
    File? fileFile
  }
  command <<<
    seqhax convert \
      ~{fileFile} \
      ~{true="-a" false="" aA} \
      ~{true="-q" false="" qQ}
  >>>
}