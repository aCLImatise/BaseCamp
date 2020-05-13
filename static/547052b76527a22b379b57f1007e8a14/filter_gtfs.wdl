version 1.0

task FilterGtfs.pl {
  input {
    Boolean fF
    Boolean gG
    Boolean aA
    Boolean qQ
  }
  command <<<
    filter_gtfs.pl \
      ~{true="-f" false="" fF} \
      ~{true="-g" false="" gG} \
      ~{true="-A" false="" aA} \
      ~{true="-q" false="" qQ}
  >>>
}