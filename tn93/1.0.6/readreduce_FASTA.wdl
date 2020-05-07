version 1.0

task ReadreduceFASTA {
  input {
    String oO
    String aA
    String lL
    String dD
    Int sS
    Boolean qQ
    Boolean jJ
  }
  command <<<
    readreduce FASTA \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(aA) then ("-a " +  '"' + aA + '"') else ""} \
      ~{if defined(lL) then ("-l " +  '"' + lL + '"') else ""} \
      ~{if defined(dD) then ("-d " +  '"' + dD + '"') else ""} \
      ~{if defined(sS) then ("-s " +  '"' + sS + '"') else ""} \
      ~{true="-q" false="" qQ} \
      ~{true="-j" false="" jJ}
  >>>
}