version 1.0

task Idfetch {
  input {
    Boolean tT
    Boolean iI
    Boolean gG
    Boolean cC
    Boolean fF
    Boolean sS
    Boolean lL
    Boolean qQ
    Boolean qQ
    Boolean nN
    Boolean fF
  }
  command <<<
    idfetch \
      ~{true="-t" false="" tT} \
      ~{true="-i" false="" iI} \
      ~{true="-G" false="" gG} \
      ~{true="-c" false="" cC} \
      ~{true="-f" false="" fF} \
      ~{true="-s" false="" sS} \
      ~{true="-l" false="" lL} \
      ~{true="-q" false="" qQ} \
      ~{true="-Q" false="" qQ} \
      ~{true="-n" false="" nN} \
      ~{true="-F" false="" fF}
  >>>
}