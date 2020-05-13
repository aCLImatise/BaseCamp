version 1.0

task Tab2featureGxt.pl {
  input {
    String nN
    String oO
    String gvGv
    String dD
    String cC
    Boolean cC
    String csCs
    String mcMc
    Boolean mcMc
    String zeroZeroC
    String mincMinc
    String maxMaxC
    Boolean mincMinc
    Boolean maxMaxC
    Boolean zeroZeroC
    String mM
    String lL
    String lhLh
    Boolean fixedFixedOrder
    Boolean dtDt
    String fpFp
    Boolean afAf
    Boolean aAI
    Boolean vV
    String chrChrStarts
    String chrChrEnds
  }
  command <<<
    tab2feature_gxt.pl \
      ~{if defined(nN) then ("-n " +  '"' + nN + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(gvGv) then ("-gv " +  '"' + gvGv + '"') else ""} \
      ~{if defined(dD) then ("-d " +  '"' + dD + '"') else ""} \
      ~{if defined(cC) then ("-c " +  '"' + cC + '"') else ""} \
      ~{true="-c" false="" cC} \
      ~{if defined(csCs) then ("-cs " +  '"' + csCs + '"') else ""} \
      ~{if defined(mcMc) then ("-mc " +  '"' + mcMc + '"') else ""} \
      ~{true="-mc" false="" mcMc} \
      ~{if defined(zeroZeroC) then ("-zeroc " +  '"' + zeroZeroC + '"') else ""} \
      ~{if defined(mincMinc) then ("-minc " +  '"' + mincMinc + '"') else ""} \
      ~{if defined(maxMaxC) then ("-maxc " +  '"' + maxMaxC + '"') else ""} \
      ~{true="-minc" false="" mincMinc} \
      ~{true="-maxc" false="" maxMaxC} \
      ~{true="-zeroc" false="" zeroZeroC} \
      ~{if defined(mM) then ("-m " +  '"' + mM + '"') else ""} \
      ~{if defined(lL) then ("-l " +  '"' + lL + '"') else ""} \
      ~{if defined(lhLh) then ("-lh " +  '"' + lhLh + '"') else ""} \
      ~{true="-fixed_order" false="" fixedFixedOrder} \
      ~{true="-dt" false="" dtDt} \
      ~{if defined(fpFp) then ("-fp " +  '"' + fpFp + '"') else ""} \
      ~{true="-af" false="" afAf} \
      ~{true="-ai" false="" aAI} \
      ~{true="-v" false="" vV} \
      ~{if defined(chrChrStarts) then ("-chr_starts " +  '"' + chrChrStarts + '"') else ""} \
      ~{if defined(chrChrEnds) then ("-chr_ends " +  '"' + chrChrEnds + '"') else ""}
  >>>
}