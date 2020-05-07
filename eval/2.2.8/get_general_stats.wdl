version 1.0

task GetGeneralStats.pl {
  input {
    Boolean gG
    Boolean qQ
    Boolean aA
    Boolean vV
  }
  command <<<
    get_general_stats.pl \
      ~{true="-g" false="" gG} \
      ~{true="-q" false="" qQ} \
      ~{true="-A" false="" aA} \
      ~{true="-v" false="" vV}
  >>>
}