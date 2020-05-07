version 1.0

task StatsGenerator {
  input {
    Boolean aA
    Boolean pP
    Boolean gG
    Boolean taTa
    Boolean tbTb
  }
  command <<<
    statsGenerator \
      ~{true="-a" false="" aA} \
      ~{true="-p" false="" pP} \
      ~{true="-g" false="" gG} \
      ~{true="-ta" false="" taTa} \
      ~{true="-tb" false="" tbTb}
  >>>
}