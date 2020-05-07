version 1.0

task Filter.pl.bak {
  input {
    String cC
    String hH
    String minMin
    String minsMins
    String minMinL
    String maxMax
    String maxsMaxs
    String maxMaxL
    String absAbs
    String babsBabs
    String strStr
    String estEstR
    String estEstRList
    String nstrNstr
    Boolean neNe
    Boolean eE
    String minMinPass
    String relRelMinPass
    Boolean numericNumeric
    Boolean passPassFrom
    String uU
    Boolean printPrintNum
    String skSk
    String skipSkip
    Boolean qQ
  }
  command <<<
    filter.pl.bak \
      ~{if defined(cC) then ("-c " +  '"' + cC + '"') else ""} \
      ~{if defined(hH) then ("-h " +  '"' + hH + '"') else ""} \
      ~{if defined(minMin) then ("-min " +  '"' + minMin + '"') else ""} \
      ~{if defined(minsMins) then ("-mins " +  '"' + minsMins + '"') else ""} \
      ~{if defined(minMinL) then ("-minl " +  '"' + minMinL + '"') else ""} \
      ~{if defined(maxMax) then ("-max " +  '"' + maxMax + '"') else ""} \
      ~{if defined(maxsMaxs) then ("-maxs " +  '"' + maxsMaxs + '"') else ""} \
      ~{if defined(maxMaxL) then ("-maxl " +  '"' + maxMaxL + '"') else ""} \
      ~{if defined(absAbs) then ("-abs " +  '"' + absAbs + '"') else ""} \
      ~{if defined(babsBabs) then ("-babs " +  '"' + babsBabs + '"') else ""} \
      ~{if defined(strStr) then ("-str " +  '"' + strStr + '"') else ""} \
      ~{if defined(estEstR) then ("-estr " +  '"' + estEstR + '"') else ""} \
      ~{if defined(estEstRList) then ("-estr_list " +  '"' + estEstRList + '"') else ""} \
      ~{if defined(nstrNstr) then ("-nstr " +  '"' + nstrNstr + '"') else ""} \
      ~{true="-ne" false="" neNe} \
      ~{true="-e" false="" eE} \
      ~{if defined(minMinPass) then ("-min_pass " +  '"' + minMinPass + '"') else ""} \
      ~{if defined(relRelMinPass) then ("-rel_min_pass " +  '"' + relRelMinPass + '"') else ""} \
      ~{true="-numeric" false="" numericNumeric} \
      ~{true="-pass_from" false="" passPassFrom} \
      ~{if defined(uU) then ("-u " +  '"' + uU + '"') else ""} \
      ~{true="-print_num" false="" printPrintNum} \
      ~{if defined(skSk) then ("-sk " +  '"' + skSk + '"') else ""} \
      ~{if defined(skipSkip) then ("-skip " +  '"' + skipSkip + '"') else ""} \
      ~{true="-q" false="" qQ}
  >>>
}