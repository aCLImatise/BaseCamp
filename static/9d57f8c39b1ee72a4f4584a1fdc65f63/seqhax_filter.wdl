version 1.0

task SeqhaxFilter {
  input {
    Int lL
    Boolean fF
    Boolean pP
    File? fileFile
  }
  command <<<
    seqhax filter \
      ~{fileFile} \
      ~{if defined(lL) then ("-l " +  '"' + lL + '"') else ""} \
      ~{true="-f" false="" fF} \
      ~{true="-p" false="" pP}
  >>>
}