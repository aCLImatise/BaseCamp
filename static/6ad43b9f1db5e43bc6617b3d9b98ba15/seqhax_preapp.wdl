version 1.0

task SeqhaxPreapp {
  input {
    String pP
    String sS
    Boolean pP
    String? seqSeq
    File? fileFile
  }
  command <<<
    seqhax preapp \
      ~{seqSeq} \
      ~{if defined(pP) then ("-P " +  '"' + pP + '"') else ""} \
      ~{if defined(sS) then ("-S " +  '"' + sS + '"') else ""} \
      ~{true="-p" false="" pP} \
      ~{fileFile}
  >>>
}