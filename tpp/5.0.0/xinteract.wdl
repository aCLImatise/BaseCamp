version 1.0

task Xinteract {
  input {
    Boolean tT
    Boolean tT
    Boolean tT
    Boolean nNMyFile
    String rR
    String gG
    String vV
    String precPrec
    Boolean niNi
    Boolean npNp
    Boolean nrNr
    Boolean p0P0
    Boolean xX
    Boolean iI
    Boolean dD
    Boolean dD
    Boolean cC
    Boolean ppmPpm
    Boolean eE
    Boolean lL
    Boolean tT
    Boolean aA
    Boolean pP
    Boolean mwMw
    Boolean monoMono
    Boolean aveAve
    String threadsThreads
    Boolean exEx
    String mzMzToL
    Boolean noNoUpdate
    Boolean mM
    Boolean aA
    Boolean nN
    Boolean bB
    Boolean fF
    Boolean cC
    Boolean pP
    Boolean lL
    Boolean hH
    Boolean mM
    Boolean nN
    Boolean oO
    Boolean pP
    Boolean iI
    Boolean lL
    Boolean lL
    Boolean bB
    Boolean rR
    Boolean fF
    Boolean sS
    Boolean fF
    Boolean cC
    Boolean bB
    Boolean zZ
    Boolean mM
    Int prevPrevAaLen
    Int nextNextAaLen
    String restoreRestoreNonexistentIfPrefix
  }
  command <<<
    xinteract \
      ~{true="-t" false="" tT} \
      ~{true="-t" false="" tT} \
      ~{true="-t" false="" tT} \
      ~{true="-Nmyfile" false="" nNMyFile} \
      ~{if defined(rR) then ("-R " +  '"' + rR + '"') else ""} \
      ~{if defined(gG) then ("-G " +  '"' + gG + '"') else ""} \
      ~{if defined(vV) then ("-V " +  '"' + vV + '"') else ""} \
      ~{if defined(precPrec) then ("-PREC " +  '"' + precPrec + '"') else ""} \
      ~{true="-nI" false="" niNi} \
      ~{true="-nP" false="" npNp} \
      ~{true="-nR" false="" nrNr} \
      ~{true="-p0" false="" p0P0} \
      ~{true="-x" false="" xX} \
      ~{true="-I" false="" iI} \
      ~{true="-d" false="" dD} \
      ~{true="-D" false="" dD} \
      ~{true="-c" false="" cC} \
      ~{true="-PPM" false="" ppmPpm} \
      ~{true="-E" false="" eE} \
      ~{true="-l" false="" lL} \
      ~{true="-T" false="" tT} \
      ~{true="-a" false="" aA} \
      ~{true="-p" false="" pP} \
      ~{true="-mw" false="" mwMw} \
      ~{true="-MONO" false="" monoMono} \
      ~{true="-AVE" false="" aveAve} \
      ~{if defined(threadsThreads) then ("-THREADS " +  '"' + threadsThreads + '"') else ""} \
      ~{true="-eX" false="" exEx} \
      ~{if defined(mzMzToL) then ("-MZTOL " +  '"' + mzMzToL + '"') else ""} \
      ~{true="-NOUPDATE" false="" noNoUpdate} \
      ~{true="-m" false="" mM} \
      ~{true="-a" false="" aA} \
      ~{true="-n" false="" nN} \
      ~{true="-b" false="" bB} \
      ~{true="-F" false="" fF} \
      ~{true="-c" false="" cC} \
      ~{true="-p" false="" pP} \
      ~{true="-L" false="" lL} \
      ~{true="-H" false="" hH} \
      ~{true="-M" false="" mM} \
      ~{true="-N" false="" nN} \
      ~{true="-O" false="" oO} \
      ~{true="-P" false="" pP} \
      ~{true="-i" false="" iI} \
      ~{true="-l" false="" lL} \
      ~{true="-l" false="" lL} \
      ~{true="-b" false="" bB} \
      ~{true="-r" false="" rR} \
      ~{true="-f" false="" fF} \
      ~{true="-S" false="" sS} \
      ~{true="-F" false="" fF} \
      ~{true="-C" false="" cC} \
      ~{true="-B" false="" bB} \
      ~{true="-Z" false="" zZ} \
      ~{true="-m" false="" mM} \
      ~{if defined(prevPrevAaLen) then ("-PREV_AA_LEN " +  '"' + prevPrevAaLen + '"') else ""} \
      ~{if defined(nextNextAaLen) then ("-NEXT_AA_LEN " +  '"' + nextNextAaLen + '"') else ""} \
      ~{if defined(restoreRestoreNonexistentIfPrefix) then ("-RESTORE_NONEXISTENT_IF_PREFIX " +  '"' + restoreRestoreNonexistentIfPrefix + '"') else ""}
  >>>
}