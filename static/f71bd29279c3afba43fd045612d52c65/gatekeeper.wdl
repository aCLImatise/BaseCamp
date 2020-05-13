version 1.0

task Gatekeeper {
  input {
    Boolean aA
    String oO
    Boolean tT
    Boolean fF
    String vV
    String pP
    Boolean dumpDumpInfo
    Boolean lastLastFragIid
    Boolean dumpDumpLibraries
    Boolean dumpDumpFragments
    Boolean withWithSequence
    String clearClear
    Boolean invertInvert
    String dumpDumpFastA
    Boolean allAllReads
    Boolean allAllBases
    Boolean decodedDecoded
    String clearClear
    Boolean dumpDumpFrg
    Boolean allAllReads
    Boolean doDoNotFixMates
    String clearClear
    Boolean legacyLegacyFormat
    String dumpDumpNewBler
    String dumpDumpFastQ
    Boolean withWithLibname
  }
  command <<<
    gatekeeper \
      ~{true="-a" false="" aA} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{true="-T" false="" tT} \
      ~{true="-F" false="" fF} \
      ~{if defined(vV) then ("-v " +  '"' + vV + '"') else ""} \
      ~{if defined(pP) then ("-P " +  '"' + pP + '"') else ""} \
      ~{true="-dumpinfo" false="" dumpDumpInfo} \
      ~{true="-lastfragiid" false="" lastLastFragIid} \
      ~{true="-dumplibraries" false="" dumpDumpLibraries} \
      ~{true="-dumpfragments" false="" dumpDumpFragments} \
      ~{true="-withsequence" false="" withWithSequence} \
      ~{if defined(clearClear) then ("-clear " +  '"' + clearClear + '"') else ""} \
      ~{true="-invert" false="" invertInvert} \
      ~{if defined(dumpDumpFastA) then ("-dumpfasta " +  '"' + dumpDumpFastA + '"') else ""} \
      ~{true="-allreads" false="" allAllReads} \
      ~{true="-allbases" false="" allAllBases} \
      ~{true="-decoded" false="" decodedDecoded} \
      ~{if defined(clearClear) then ("-clear " +  '"' + clearClear + '"') else ""} \
      ~{true="-dumpfrg" false="" dumpDumpFrg} \
      ~{true="-allreads" false="" allAllReads} \
      ~{true="-donotfixmates" false="" doDoNotFixMates} \
      ~{if defined(clearClear) then ("-clear " +  '"' + clearClear + '"') else ""} \
      ~{true="-legacyformat" false="" legacyLegacyFormat} \
      ~{if defined(dumpDumpNewBler) then ("-dumpnewbler " +  '"' + dumpDumpNewBler + '"') else ""} \
      ~{if defined(dumpDumpFastQ) then ("-dumpfastq " +  '"' + dumpDumpFastQ + '"') else ""} \
      ~{true="-withlibname" false="" withWithLibname}
  >>>
}