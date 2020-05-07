version 1.0

task Bogart {
  input {
    String sS
    String oO
    String tT
    String oO
    String threadsThreads
    String mM
    Boolean saveSave
    Boolean gsGs
    String mrMr
    String moMo
    String miMi
    String mpMp
    Boolean noNoFilter
    String egEg
    String emEm
    String caCa
    String cpCp
    String dgDg
    String dbDb
    String drDr
    String covCovGapOlap
    String lopsidedLopsided
    String minMinOlapPercent
    String dD
    String dD
  }
  command <<<
    bogart \
      ~{if defined(sS) then ("-S " +  '"' + sS + '"') else ""} \
      ~{if defined(oO) then ("-O " +  '"' + oO + '"') else ""} \
      ~{if defined(tT) then ("-T " +  '"' + tT + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(threadsThreads) then ("-threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(mM) then ("-M " +  '"' + mM + '"') else ""} \
      ~{true="-save" false="" saveSave} \
      ~{true="-gs" false="" gsGs} \
      ~{if defined(mrMr) then ("-mr " +  '"' + mrMr + '"') else ""} \
      ~{if defined(moMo) then ("-mo " +  '"' + moMo + '"') else ""} \
      ~{if defined(miMi) then ("-mi " +  '"' + miMi + '"') else ""} \
      ~{if defined(mpMp) then ("-mp " +  '"' + mpMp + '"') else ""} \
      ~{true="-nofilter" false="" noNoFilter} \
      ~{if defined(egEg) then ("-eg " +  '"' + egEg + '"') else ""} \
      ~{if defined(emEm) then ("-eM " +  '"' + emEm + '"') else ""} \
      ~{if defined(caCa) then ("-ca " +  '"' + caCa + '"') else ""} \
      ~{if defined(cpCp) then ("-cp " +  '"' + cpCp + '"') else ""} \
      ~{if defined(dgDg) then ("-dg " +  '"' + dgDg + '"') else ""} \
      ~{if defined(dbDb) then ("-db " +  '"' + dbDb + '"') else ""} \
      ~{if defined(drDr) then ("-dr " +  '"' + drDr + '"') else ""} \
      ~{if defined(covCovGapOlap) then ("-covgapolap " +  '"' + covCovGapOlap + '"') else ""} \
      ~{if defined(lopsidedLopsided) then ("-lopsided " +  '"' + lopsidedLopsided + '"') else ""} \
      ~{if defined(minMinOlapPercent) then ("-minolappercent " +  '"' + minMinOlapPercent + '"') else ""} \
      ~{if defined(dD) then ("-D " +  '"' + dD + '"') else ""} \
      ~{if defined(dD) then ("-d " +  '"' + dD + '"') else ""}
  >>>
}