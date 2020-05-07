version 1.0

task BpSeqpart.pl {
  input {
    String nN
    String hH
    String pP
    String fF
    String oO
  }
  command <<<
    bp_seqpart.pl \
      ~{if defined(nN) then ("-n " +  '"' + nN + '"') else ""} \
      ~{if defined(hH) then ("-h " +  '"' + hH + '"') else ""} \
      ~{if defined(pP) then ("-p " +  '"' + pP + '"') else ""} \
      ~{if defined(fF) then ("-f " +  '"' + fF + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""}
  >>>
}