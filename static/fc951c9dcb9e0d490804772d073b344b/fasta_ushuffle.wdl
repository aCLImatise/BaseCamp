version 1.0

task FastaUshuffle {
  input {
    Boolean oO
    String kK
    String sS
    String nN
    String rR
  }
  command <<<
    fasta_ushuffle \
      ~{true="-o" false="" oO} \
      ~{if defined(kK) then ("-k " +  '"' + kK + '"') else ""} \
      ~{if defined(sS) then ("-s " +  '"' + sS + '"') else ""} \
      ~{if defined(nN) then ("-n " +  '"' + nN + '"') else ""} \
      ~{if defined(rR) then ("-r " +  '"' + rR + '"') else ""}
  >>>
}