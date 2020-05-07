version 1.0

task MegaReadsAssembleRef.sh {
  input {
    File mM
    String rR
    File aA
    String? megaMegaReadsAssembleIRefSh
  }
  command <<<
    mega_reads_assemble_ref.sh \
      ~{megaMegaReadsAssembleIRefSh} \
      ~{if defined(mM) then ("-m " +  '"' + mM + '"') else ""} \
      ~{if defined(rR) then ("-r " +  '"' + rR + '"') else ""} \
      ~{if defined(aA) then ("-a " +  '"' + aA + '"') else ""}
  >>>
}