version 1.0

task SeqhaxTrunc {
  input {
    String lL
    String pP
    File? fileFile
  }
  command <<<
    seqhax trunc \
      ~{fileFile} \
      ~{if defined(lL) then ("-l " +  '"' + lL + '"') else ""} \
      ~{if defined(pP) then ("-p " +  '"' + pP + '"') else ""}
  >>>
}