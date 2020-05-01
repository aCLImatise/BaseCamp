version 1.0

task DialignTx {
  input {
    Boolean dD
    Boolean sS
    Boolean aA
    Boolean cC
    Boolean lL
    Boolean mM
    Boolean wW
    Boolean pP
    Boolean vV
    Boolean tT
    Boolean nN
    Boolean gG
    Boolean mM
    Boolean oO
    Boolean fF
    Boolean rR
    Boolean uU
    Boolean aA
    Boolean dD
    Boolean tT
    Boolean lL
    Boolean oO
    Boolean pP
    Boolean fF
    Boolean cC
    String hH
  }
  command <<<
    dialign-tx \
      ~{true="-d" false="" dD} \
      ~{true="-s" false="" sS} \
      ~{true="-a" false="" aA} \
      ~{true="-c" false="" cC} \
      ~{true="-l" false="" lL} \
      ~{true="-m" false="" mM} \
      ~{true="-w" false="" wW} \
      ~{true="-p" false="" pP} \
      ~{true="-v" false="" vV} \
      ~{true="-t" false="" tT} \
      ~{true="-n" false="" nN} \
      ~{true="-g" false="" gG} \
      ~{true="-m" false="" mM} \
      ~{true="-o" false="" oO} \
      ~{true="-f" false="" fF} \
      ~{true="-r" false="" rR} \
      ~{true="-u" false="" uU} \
      ~{true="-A" false="" aA} \
      ~{true="-D" false="" dD} \
      ~{true="-T" false="" tT} \
      ~{true="-L" false="" lL} \
      ~{true="-O" false="" oO} \
      ~{true="-P" false="" pP} \
      ~{true="-F" false="" fF} \
      ~{true="-C" false="" cC} \
      ~{if defined(hH) then ("-H " +  '"' + hH + '"') else ""}
  >>>
}