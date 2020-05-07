version 1.0

task GenblastA {
  input {
    Boolean pP
    Boolean qQ
    Boolean tT
    Boolean pP
    Boolean pgPg
    Boolean eE
    Boolean gG
    Boolean fF
    Boolean aA
    Boolean dD
    Boolean rR
    Boolean cC
    Boolean sS
    Boolean oO
  }
  command <<<
    genblastA \
      ~{true="-P" false="" pP} \
      ~{true="-q" false="" qQ} \
      ~{true="-t" false="" tT} \
      ~{true="-p" false="" pP} \
      ~{true="-pg" false="" pgPg} \
      ~{true="-e" false="" eE} \
      ~{true="-g" false="" gG} \
      ~{true="-f" false="" fF} \
      ~{true="-a" false="" aA} \
      ~{true="-d" false="" dD} \
      ~{true="-r" false="" rR} \
      ~{true="-c" false="" cC} \
      ~{true="-s" false="" sS} \
      ~{true="-o" false="" oO}
  >>>
}