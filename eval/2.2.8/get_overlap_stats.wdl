version 1.0

task GetOverlapStats.pl {
  input {
    Boolean gG
    Boolean qQ
    Boolean vV
  }
  command <<<
    get_overlap_stats.pl \
      ~{true="-g" false="" gG} \
      ~{true="-q" false="" qQ} \
      ~{true="-v" false="" vV}
  >>>
}