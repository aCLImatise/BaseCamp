version 1.0

task Clust {
  input {
    File nN
    File rR
    File mM
    Directory oO
    String tT
    String baseBaseMethods
    Int kK
    String sS
    Int dD
    String filFilV
    Int filFilC
    Int filFilD
    Boolean filFilAbs
    Boolean filFilPerc
    Boolean filFilFlat
    Boolean noNoFilFlat
    Int csCs
    String q3sQ3s
    Boolean noNoOptimisation
    Boolean deterministicDeterministic
    Int npNp
    String? dataDataPath
  }
  command <<<
    clust \
      ~{dataDataPath} \
      ~{if defined(nN) then ("-n " +  '"' + nN + '"') else ""} \
      ~{if defined(rR) then ("-r " +  '"' + rR + '"') else ""} \
      ~{if defined(mM) then ("-m " +  '"' + mM + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""} \
      ~{if defined(baseBaseMethods) then ("-basemethods " +  '"' + baseBaseMethods + '"') else ""} \
      ~{if defined(kK) then ("-K " +  '"' + kK + '"') else ""} \
      ~{if defined(sS) then ("-s " +  '"' + sS + '"') else ""} \
      ~{if defined(dD) then ("-d " +  '"' + dD + '"') else ""} \
      ~{if defined(filFilV) then ("-fil-v " +  '"' + filFilV + '"') else ""} \
      ~{if defined(filFilC) then ("-fil-c " +  '"' + filFilC + '"') else ""} \
      ~{if defined(filFilD) then ("-fil-d " +  '"' + filFilD + '"') else ""} \
      ~{true="--fil-abs" false="" filFilAbs} \
      ~{true="--fil-perc" false="" filFilPerc} \
      ~{true="--fil-flat" false="" filFilFlat} \
      ~{true="--no-fil-flat" false="" noNoFilFlat} \
      ~{if defined(csCs) then ("-cs " +  '"' + csCs + '"') else ""} \
      ~{if defined(q3sQ3s) then ("-q3s " +  '"' + q3sQ3s + '"') else ""} \
      ~{true="--no-optimisation" false="" noNoOptimisation} \
      ~{true="--deterministic" false="" deterministicDeterministic} \
      ~{if defined(npNp) then ("-np " +  '"' + npNp + '"') else ""}
  >>>
}