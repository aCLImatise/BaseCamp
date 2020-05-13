version 1.0

task BuildUnitigs {
  input {
    Boolean oO
    Boolean gG
    Boolean tT
    String oO
    String bB
    Boolean uU
    Boolean jJ
    Boolean bB
    Boolean mM
    Boolean eE
    Boolean eE
    String dD
  }
  command <<<
    buildUnitigs \
      ~{true="-O" false="" oO} \
      ~{true="-G" false="" gG} \
      ~{true="-T" false="" tT} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(bB) then ("-B " +  '"' + bB + '"') else ""} \
      ~{true="-U" false="" uU} \
      ~{true="-J" false="" jJ} \
      ~{true="-b" false="" bB} \
      ~{true="-m" false="" mM} \
      ~{true="-e" false="" eE} \
      ~{true="-E" false="" eE} \
      ~{if defined(dD) then ("-D " +  '"' + dD + '"') else ""}
  >>>
}