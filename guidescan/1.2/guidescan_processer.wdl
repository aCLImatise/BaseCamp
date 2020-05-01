version 1.0

task GuidescanProcesser {
  input {
    String fF
    String nN
    Int minMinChr
    String cC
    Int lL
    String pP
    String aA
    String pamPamPos
    String sS
    String dD
    Int maxMaxOffPos
    Int maxMaxOffCount
    String gnuGnuPath
    String tT
  }
  command <<<
    guidescan_processer \
      ~{if defined(fF) then ("-f " +  '"' + fF + '"') else ""} \
      ~{if defined(nN) then ("-n " +  '"' + nN + '"') else ""} \
      ~{if defined(minMinChr) then ("--minchr " +  '"' + minMinChr + '"') else ""} \
      ~{if defined(cC) then ("-c " +  '"' + cC + '"') else ""} \
      ~{if defined(lL) then ("-l " +  '"' + lL + '"') else ""} \
      ~{if defined(pP) then ("-p " +  '"' + pP + '"') else ""} \
      ~{if defined(aA) then ("-a " +  '"' + aA + '"') else ""} \
      ~{if defined(pamPamPos) then ("--pampos " +  '"' + pamPamPos + '"') else ""} \
      ~{if defined(sS) then ("-s " +  '"' + sS + '"') else ""} \
      ~{if defined(dD) then ("-d " +  '"' + dD + '"') else ""} \
      ~{if defined(maxMaxOffPos) then ("--maxoffpos " +  '"' + maxMaxOffPos + '"') else ""} \
      ~{if defined(maxMaxOffCount) then ("--maxoffcount " +  '"' + maxMaxOffCount + '"') else ""} \
      ~{if defined(gnuGnuPath) then ("--gnupath " +  '"' + gnuGnuPath + '"') else ""} \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""}
  >>>
}