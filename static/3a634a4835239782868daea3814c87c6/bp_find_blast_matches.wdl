version 1.0

task BpFindBlastMatches.pl {
  input {
    Boolean blastBlast
    Boolean fastFastA
    Boolean nN
    Boolean oO
    Boolean headerHeader
  }
  command <<<
    bp_find-blast-matches.pl \
      ~{true="-blast" false="" blastBlast} \
      ~{true="-fasta" false="" fastFastA} \
      ~{true="-n" false="" nN} \
      ~{true="-o" false="" oO} \
      ~{true="-header" false="" headerHeader}
  >>>
}