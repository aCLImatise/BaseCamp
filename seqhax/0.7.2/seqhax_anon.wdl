version 1.0

task SeqhaxAnon {
  input {
    Boolean xX
    Boolean pP
    File? fileFile
  }
  command <<<
    seqhax anon \
      ~{fileFile} \
      ~{true="-x" false="" xX} \
      ~{true="-p" false="" pP}
  >>>
}