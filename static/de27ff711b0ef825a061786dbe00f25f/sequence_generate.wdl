version 1.0

task SequenceGenerate {
  input {
    String gcGc
    String atAt
    String aA
    String cC
    String gG
    String tT
    Boolean gcGc
    Boolean aA
    Boolean aA
    Boolean gcGc
  }
  command <<<
    sequence generate \
      ~{if defined(gcGc) then ("-gc " +  '"' + gcGc + '"') else ""} \
      ~{if defined(atAt) then ("-at " +  '"' + atAt + '"') else ""} \
      ~{if defined(aA) then ("-a " +  '"' + aA + '"') else ""} \
      ~{if defined(cC) then ("-c " +  '"' + cC + '"') else ""} \
      ~{if defined(gG) then ("-g " +  '"' + gG + '"') else ""} \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""} \
      ~{true="-gc" false="" gcGc} \
      ~{true="-a" false="" aA} \
      ~{true="-a" false="" aA} \
      ~{true="-gc" false="" gcGc}
  >>>
}