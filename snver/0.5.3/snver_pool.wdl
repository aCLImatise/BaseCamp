version 1.0

task SnverPool {
  input {
    Boolean iI
    Boolean rR
    Boolean cC
    Boolean nN
    Boolean lL
    Boolean oO
    Boolean mqMq
    Boolean bqBq
    Boolean sS
    Boolean fF
    Boolean pP
    Boolean aA
    Boolean tT
    Boolean uU
    Boolean dbDb
  }
  command <<<
    snver-pool \
      ~{true="-i" false="" iI} \
      ~{true="-r" false="" rR} \
      ~{true="-c" false="" cC} \
      ~{true="-n" false="" nN} \
      ~{true="-l" false="" lL} \
      ~{true="-o" false="" oO} \
      ~{true="-mq" false="" mqMq} \
      ~{true="-bq" false="" bqBq} \
      ~{true="-s" false="" sS} \
      ~{true="-f" false="" fF} \
      ~{true="-p" false="" pP} \
      ~{true="-a" false="" aA} \
      ~{true="-t" false="" tT} \
      ~{true="-u" false="" uU} \
      ~{true="-db" false="" dbDb}
  >>>
}