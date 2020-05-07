version 1.0

task EPCR {
  input {
    Boolean mM
    Boolean wW
    Boolean nN
    Boolean gG
    Boolean fF
    Boolean oO
    Boolean tT
    Boolean dD
    Boolean pP
    Boolean vV
    String aA
    Boolean xX
    Boolean uU
    Boolean midMid
    String? tT
    String? lL
    String? oO
    String? pP
    String? sS
    String? eE
    String? sS
    String? eE
    String? pP
  }
  command <<<
    e-PCR \
      ~{tT} \
      ~{true="-m" false="" mM} \
      ~{true="-w" false="" wW} \
      ~{true="-n" false="" nN} \
      ~{true="-g" false="" gG} \
      ~{true="-f" false="" fF} \
      ~{true="-o" false="" oO} \
      ~{true="-t" false="" tT} \
      ~{true="-d" false="" dD} \
      ~{true="-p" false="" pP} \
      ~{true="-v" false="" vV} \
      ~{if defined(aA) then ("-a " +  '"' + aA + '"') else ""} \
      ~{true="-x" false="" xX} \
      ~{true="-u" false="" uU} \
      ~{true="-mid" false="" midMid} \
      ~{lL} \
      ~{oO} \
      ~{pP} \
      ~{sS} \
      ~{eE} \
      ~{sS} \
      ~{eE} \
      ~{pP}
  >>>
}