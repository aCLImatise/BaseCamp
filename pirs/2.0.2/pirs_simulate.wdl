version 1.0

task PirsSimulate {
  input {
    String lL
    String xX
    String mM
    String vV
    Boolean jJ
    Boolean dD
    String oO
  }
  command <<<
    pirs simulate \
      ~{if defined(lL) then ("-l " +  '"' + lL + '"') else ""} \
      ~{if defined(xX) then ("-x " +  '"' + xX + '"') else ""} \
      ~{if defined(mM) then ("-m " +  '"' + mM + '"') else ""} \
      ~{if defined(vV) then ("-v " +  '"' + vV + '"') else ""} \
      ~{true="-j" false="" jJ} \
      ~{true="-d" false="" dD} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""}
  >>>
}