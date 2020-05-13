version 1.0

task KmerAnalysis.plSTRING {
  input {
    File fF
    String dD
    String oO
    Int kK
    Boolean tT
  }
  command <<<
    kmer_analysis.pl STRING \
      ~{if defined(fF) then ("-f " +  '"' + fF + '"') else ""} \
      ~{if defined(dD) then ("-d " +  '"' + dD + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(kK) then ("-k " +  '"' + kK + '"') else ""} \
      ~{true="-t" false="" tT}
  >>>
}