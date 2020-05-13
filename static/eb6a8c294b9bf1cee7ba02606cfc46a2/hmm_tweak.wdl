version 1.0

task HmmTweak {
  input {
    String fF
    String tT
    String mM
    String aA
    String eE
    String iI
    String uU
    String fF
    String tT
    Boolean zZ
    Boolean rR
    Boolean yY
    String? optionsOptions
    File? fileFileHmm
    String? cmapCmapCm
  }
  command <<<
    hmm_tweak \
      ~{optionsOptions} \
      ~{if defined(fF) then ("-f " +  '"' + fF + '"') else ""} \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""} \
      ~{if defined(mM) then ("-m " +  '"' + mM + '"') else ""} \
      ~{if defined(aA) then ("-a " +  '"' + aA + '"') else ""} \
      ~{if defined(eE) then ("-e " +  '"' + eE + '"') else ""} \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(uU) then ("-u " +  '"' + uU + '"') else ""} \
      ~{if defined(fF) then ("-F " +  '"' + fF + '"') else ""} \
      ~{if defined(tT) then ("-T " +  '"' + tT + '"') else ""} \
      ~{true="-z" false="" zZ} \
      ~{true="-R" false="" rR} \
      ~{true="-y" false="" yY} \
      ~{fileFileHmm} \
      ~{cmapCmapCm}
  >>>
}