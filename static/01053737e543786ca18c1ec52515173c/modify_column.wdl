version 1.0

task ModifyColumn.pl {
  input {
    String cC
    String rR
    Boolean aA
    String minMin
    String maxMax
    String minsMins
    String maxsMaxs
    Boolean rngRng
    Boolean rngsRngs
    String absAbs
    String babsBabs
    String strStr
    String estEstR
    String nstrNstr
    Boolean neNe
    Boolean emptyEmpty
    File pairsPairs
    String skipSkip
    String skipSkipC
    Boolean pdPd
    String pP
    String resRes
    String astrAstr
    String bstrBstr
    String setSet
    String rmRmRe
    Boolean pvPv
    Boolean pvPvVal
    String pvPvHigh
    Boolean pvPvLow
    String spltSpltD
    Boolean cumulCumul
    String zeroZero
  }
  command <<<
    modify_column.pl \
      ~{if defined(cC) then ("-c " +  '"' + cC + '"') else ""} \
      ~{if defined(rR) then ("-r " +  '"' + rR + '"') else ""} \
      ~{true="-A" false="" aA} \
      ~{if defined(minMin) then ("-min " +  '"' + minMin + '"') else ""} \
      ~{if defined(maxMax) then ("-max " +  '"' + maxMax + '"') else ""} \
      ~{if defined(minsMins) then ("-mins " +  '"' + minsMins + '"') else ""} \
      ~{if defined(maxsMaxs) then ("-maxs " +  '"' + maxsMaxs + '"') else ""} \
      ~{true="-rng" false="" rngRng} \
      ~{true="-rngs" false="" rngsRngs} \
      ~{if defined(absAbs) then ("-abs " +  '"' + absAbs + '"') else ""} \
      ~{if defined(babsBabs) then ("-babs " +  '"' + babsBabs + '"') else ""} \
      ~{if defined(strStr) then ("-str " +  '"' + strStr + '"') else ""} \
      ~{if defined(estEstR) then ("-estr " +  '"' + estEstR + '"') else ""} \
      ~{if defined(nstrNstr) then ("-nstr " +  '"' + nstrNstr + '"') else ""} \
      ~{true="-ne" false="" neNe} \
      ~{true="-empty" false="" emptyEmpty} \
      ~{if defined(pairsPairs) then ("-pairs " +  '"' + pairsPairs + '"') else ""} \
      ~{if defined(skipSkip) then ("-skip " +  '"' + skipSkip + '"') else ""} \
      ~{if defined(skipSkipC) then ("-skipc " +  '"' + skipSkipC + '"') else ""} \
      ~{true="-pd" false="" pdPd} \
      ~{if defined(pP) then ("-p " +  '"' + pP + '"') else ""} \
      ~{if defined(resRes) then ("-res " +  '"' + resRes + '"') else ""} \
      ~{if defined(astrAstr) then ("-astr " +  '"' + astrAstr + '"') else ""} \
      ~{if defined(bstrBstr) then ("-bstr " +  '"' + bstrBstr + '"') else ""} \
      ~{if defined(setSet) then ("-set " +  '"' + setSet + '"') else ""} \
      ~{if defined(rmRmRe) then ("-rmre " +  '"' + rmRmRe + '"') else ""} \
      ~{if defined(pvPv) then ("-pv " +  '"' + pvPv + '"') else ""} \
      ~{true="-pv_val" false="" pvPvVal} \
      ~{if defined(pvPvHigh) then ("-pv_high " +  '"' + pvPvHigh + '"') else ""} \
      ~{true="-pv_low" false="" pvPvLow} \
      ~{if defined(spltSpltD) then ("-splt_d " +  '"' + spltSpltD + '"') else ""} \
      ~{true="-cumul" false="" cumulCumul} \
      ~{if defined(zeroZero) then ("-zero " +  '"' + zeroZero + '"') else ""}
  >>>
}