version 1.0

task Fasta2shrepGspan.pl {
  input {
    Boolean winsWins
    Boolean shiftShift
    Boolean cC
    Boolean tT
    Boolean mM
    Boolean tmpTmp
    Boolean oO
  }
  command <<<
    fasta2shrep_gspan.pl \
      ~{true="-wins" false="" winsWins} \
      ~{true="-shift" false="" shiftShift} \
      ~{true="-c" false="" cC} \
      ~{true="-t" false="" tT} \
      ~{true="-M" false="" mM} \
      ~{true="-tmp" false="" tmpTmp} \
      ~{true="-o" false="" oO}
  >>>
}