version 1.0

task Xcf2png {
  input {
    Boolean vV
    Boolean vV
    Boolean jJ
    Boolean zZ
    String zZ
    File oO
    String bB
    Boolean aA
    Boolean cC
    Boolean gG
    Boolean tT
    Boolean gG
    Boolean dD
    Boolean fF
    String sS
    String oO
    Boolean cC
    String modeMode
    String percentPercent
    String opacityOpacity
    Boolean maskMask
    Boolean noNoMask
    Boolean uU
  }
  command <<<
    xcf2png \
      ~{true="-V" false="" vV} \
      ~{true="-v" false="" vV} \
      ~{true="-j" false="" jJ} \
      ~{true="-z" false="" zZ} \
      ~{if defined(zZ) then ("-Z " +  '"' + zZ + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(bB) then ("-b " +  '"' + bB + '"') else ""} \
      ~{true="-A" false="" aA} \
      ~{true="-c" false="" cC} \
      ~{true="-g" false="" gG} \
      ~{true="-T" false="" tT} \
      ~{true="-G" false="" gG} \
      ~{true="-D" false="" dD} \
      ~{true="-f" false="" fF} \
      ~{if defined(sS) then ("-S " +  '"' + sS + '"') else ""} \
      ~{if defined(oO) then ("-O " +  '"' + oO + '"') else ""} \
      ~{true="-C" false="" cC} \
      ~{if defined(modeMode) then ("--mode " +  '"' + modeMode + '"') else ""} \
      ~{if defined(percentPercent) then ("--percent " +  '"' + percentPercent + '"') else ""} \
      ~{if defined(opacityOpacity) then ("--opacity " +  '"' + opacityOpacity + '"') else ""} \
      ~{true="--mask" false="" maskMask} \
      ~{true="--nomask" false="" noNoMask} \
      ~{true="-u" false="" uU}
  >>>
}