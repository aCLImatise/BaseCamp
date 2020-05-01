version 1.0

task ConsensusFixer {
  input {
    String iI
    String rR
    File oO
    Int mccMcc
    Int micMic
    String pluralityPlurality
    String pluralityPluralityN
    Boolean mM
    Boolean fF
    Boolean dD
    Boolean miMi
    Boolean piPi
    Int pisPis
    Boolean dashDash
    Boolean sS
    Boolean xxXx
    Boolean xmx10gXmx10g
    Boolean xxXx
    Boolean xxXx
  }
  command <<<
    ConsensusFixer \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(rR) then ("-r " +  '"' + rR + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(mccMcc) then ("-mcc " +  '"' + mccMcc + '"') else ""} \
      ~{if defined(micMic) then ("-mic " +  '"' + micMic + '"') else ""} \
      ~{if defined(pluralityPlurality) then ("-plurality " +  '"' + pluralityPlurality + '"') else ""} \
      ~{if defined(pluralityPluralityN) then ("-pluralityN " +  '"' + pluralityPluralityN + '"') else ""} \
      ~{true="-m" false="" mM} \
      ~{true="-f" false="" fF} \
      ~{true="-d" false="" dD} \
      ~{true="-mi" false="" miMi} \
      ~{true="-pi" false="" piPi} \
      ~{if defined(pisPis) then ("-pis " +  '"' + pisPis + '"') else ""} \
      ~{true="-dash" false="" dashDash} \
      ~{true="-s" false="" sS} \
      ~{true="-XX" false="" xxXx} \
      ~{true="-Xmx10G" false="" xmx10gXmx10g} \
      ~{true="-XX" false="" xxXx} \
      ~{true="-XX" false="" xxXx}
  >>>
}