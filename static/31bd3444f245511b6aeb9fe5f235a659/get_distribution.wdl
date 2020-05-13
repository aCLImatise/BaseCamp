version 1.0

task GetDistribution.pl {
  input {
    Boolean gG
    Boolean qQ
  }
  command <<<
    get_distribution.pl \
      ~{true="-g" false="" gG} \
      ~{true="-q" false="" qQ}
  >>>
}