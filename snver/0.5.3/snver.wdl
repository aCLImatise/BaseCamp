version 1.0

task Snver {
  input {
    Boolean iI
    Boolean rR
    Boolean lL
    Boolean oO
    Boolean nN
    Boolean hetHet
    Boolean mqMq
    Boolean bqBq
    Boolean sS
    Boolean fF
    Boolean pP
    Boolean aA
    Boolean bB
    Boolean uU
    Boolean dbDb
    String? javaJava
  }
  command <<<
    snver \
      ~{javaJava} \
      ~{true="-i" false="" iI} \
      ~{true="-r" false="" rR} \
      ~{true="-l" false="" lL} \
      ~{true="-o" false="" oO} \
      ~{true="-n" false="" nN} \
      ~{true="-het" false="" hetHet} \
      ~{true="-mq" false="" mqMq} \
      ~{true="-bq" false="" bqBq} \
      ~{true="-s" false="" sS} \
      ~{true="-f" false="" fF} \
      ~{true="-p" false="" pP} \
      ~{true="-a" false="" aA} \
      ~{true="-b" false="" bB} \
      ~{true="-u" false="" uU} \
      ~{true="-db" false="" dbDb}
  >>>
}