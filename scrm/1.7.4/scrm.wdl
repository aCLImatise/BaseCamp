version 1.0

task Scrm {
  input {
    String rR
    String srSr
    String lL
    String iI
    String eiEi
    String mM
    String emEm
    String mM
    String emEm
    String maMa
    String emaEma
    String esEs
    String epsEps
    String ejEj
    String nN
    String enEn
    String enEn
    String gG
    String egEg
    String gG
    String egEg
    String tT
    Boolean tT
    Boolean oO
    Boolean lL
    Boolean osOsFs
    Boolean scSc
    File inInIt
    String seedSeed
    String pP
    Boolean printPrintModel
    Boolean printPrintModel
  }
  command <<<
    scrm \
      ~{if defined(rR) then ("-r " +  '"' + rR + '"') else ""} \
      ~{if defined(srSr) then ("-sr " +  '"' + srSr + '"') else ""} \
      ~{if defined(lL) then ("-l " +  '"' + lL + '"') else ""} \
      ~{if defined(iI) then ("-I " +  '"' + iI + '"') else ""} \
      ~{if defined(eiEi) then ("-eI " +  '"' + eiEi + '"') else ""} \
      ~{if defined(mM) then ("-M " +  '"' + mM + '"') else ""} \
      ~{if defined(emEm) then ("-eM " +  '"' + emEm + '"') else ""} \
      ~{if defined(mM) then ("-m " +  '"' + mM + '"') else ""} \
      ~{if defined(emEm) then ("-em " +  '"' + emEm + '"') else ""} \
      ~{if defined(maMa) then ("-ma " +  '"' + maMa + '"') else ""} \
      ~{if defined(emaEma) then ("-ema " +  '"' + emaEma + '"') else ""} \
      ~{if defined(esEs) then ("-es " +  '"' + esEs + '"') else ""} \
      ~{if defined(epsEps) then ("-eps " +  '"' + epsEps + '"') else ""} \
      ~{if defined(ejEj) then ("-ej " +  '"' + ejEj + '"') else ""} \
      ~{if defined(nN) then ("-n " +  '"' + nN + '"') else ""} \
      ~{if defined(enEn) then ("-en " +  '"' + enEn + '"') else ""} \
      ~{if defined(enEn) then ("-eN " +  '"' + enEn + '"') else ""} \
      ~{if defined(gG) then ("-g " +  '"' + gG + '"') else ""} \
      ~{if defined(egEg) then ("-eg " +  '"' + egEg + '"') else ""} \
      ~{if defined(gG) then ("-G " +  '"' + gG + '"') else ""} \
      ~{if defined(egEg) then ("-eG " +  '"' + egEg + '"') else ""} \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""} \
      ~{true="-T" false="" tT} \
      ~{true="-O" false="" oO} \
      ~{true="-L" false="" lL} \
      ~{true="-oSFS" false="" osOsFs} \
      ~{true="-SC" false="" scSc} \
      ~{if defined(inInIt) then ("-init " +  '"' + inInIt + '"') else ""} \
      ~{if defined(seedSeed) then ("-seed " +  '"' + seedSeed + '"') else ""} \
      ~{if defined(pP) then ("-p " +  '"' + pP + '"') else ""} \
      ~{true="-print-model" false="" printPrintModel} \
      ~{true="--print-model" false="" printPrintModel}
  >>>
}