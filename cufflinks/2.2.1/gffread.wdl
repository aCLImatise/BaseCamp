version 1.0

task Gffread {
  input {
    Boolean eE
    Boolean dD
    Boolean zZ
    Boolean wW
    Boolean xX
    Boolean wW
    Boolean yY
    Boolean lL
    Boolean mM
    Boolean oO
    Boolean tT
    String tT
  }
  command <<<
    gffread \
      ~{true="-E" false="" eE} \
      ~{true="-D" false="" dD} \
      ~{true="-Z" false="" zZ} \
      ~{true="-w" false="" wW} \
      ~{true="-x" false="" xX} \
      ~{true="-W" false="" wW} \
      ~{true="-y" false="" yY} \
      ~{true="-L" false="" lL} \
      ~{true="-m" false="" mM} \
      ~{true="-o" false="" oO} \
      ~{true="-t" false="" tT} \
      ~{if defined(tT) then ("-T " +  '"' + tT + '"') else ""}
  >>>
}