version 1.0

task SeqhaxPairs {
  input {
    File pP
    File uU
    File sS
    File bB
    File yY
    Boolean uU
    File? fileFile
    File? fileFile2
  }
  command <<<
    seqhax pairs \
      ~{fileFile} \
      ~{if defined(pP) then ("-p " +  '"' + pP + '"') else ""} \
      ~{if defined(uU) then ("-u " +  '"' + uU + '"') else ""} \
      ~{if defined(sS) then ("-s " +  '"' + sS + '"') else ""} \
      ~{if defined(bB) then ("-b " +  '"' + bB + '"') else ""} \
      ~{if defined(yY) then ("-y " +  '"' + yY + '"') else ""} \
      ~{true="-u" false="" uU} \
      ~{fileFile2}
  >>>
}