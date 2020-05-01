version 1.0

task MegaReadsAssembleNomatch.sh {
  input {
    File mM
    String pP
    File aA
    String? megaMegaReadsAssemblesH
  }
  command <<<
    mega_reads_assemble_nomatch.sh \
      ~{megaMegaReadsAssemblesH} \
      ~{if defined(mM) then ("-m " +  '"' + mM + '"') else ""} \
      ~{if defined(pP) then ("-p " +  '"' + pP + '"') else ""} \
      ~{if defined(aA) then ("-a " +  '"' + aA + '"') else ""}
  >>>
}