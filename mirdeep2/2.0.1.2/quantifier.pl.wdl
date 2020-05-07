version 1.0

task Quantifier.pl.orig {
  input {
    Boolean uU
    String pP
    String mM
    Boolean pP
    String rR
    Boolean cC
    Boolean sS
    Boolean tT
    Boolean yY
    Boolean dD
    Boolean oO
    Boolean kK
    Boolean nN
    Boolean xX
    Boolean gG
    Boolean eE
    Boolean fF
    Boolean jJ
    Boolean wW
    Boolean wW
    Boolean uU
    String? perlPerl
    String? quantifierQuantifierPl
    String? timestampTimestamp
    String? pdfsPdfs
    String? sortSort
    String? stringentStringent
    String? numberNumber
    String? ofOf
    String? mismatchesMismatches
    String? inIn
    String? readsReads
    String? vsVs
    String? precursorPrecursor
    String? mappingsMappings
  }
  command <<<
    quantifier.pl.orig \
      ~{perlPerl} \
      ~{true="-u" false="" uU} \
      ~{if defined(pP) then ("-p " +  '"' + pP + '"') else ""} \
      ~{if defined(mM) then ("-m " +  '"' + mM + '"') else ""} \
      ~{true="-P" false="" pP} \
      ~{if defined(rR) then ("-r " +  '"' + rR + '"') else ""} \
      ~{true="-c" false="" cC} \
      ~{true="-s" false="" sS} \
      ~{true="-t" false="" tT} \
      ~{true="-y" false="" yY} \
      ~{true="-d" false="" dD} \
      ~{true="-o" false="" oO} \
      ~{true="-k" false="" kK} \
      ~{true="-n" false="" nN} \
      ~{true="-x" false="" xX} \
      ~{true="-g" false="" gG} \
      ~{true="-e" false="" eE} \
      ~{true="-f" false="" fF} \
      ~{true="-j" false="" jJ} \
      ~{true="-w" false="" wW} \
      ~{true="-W" false="" wW} \
      ~{true="-U" false="" uU} \
      ~{quantifierQuantifierPl} \
      ~{timestampTimestamp} \
      ~{pdfsPdfs} \
      ~{sortSort} \
      ~{stringentStringent} \
      ~{numberNumber} \
      ~{ofOf} \
      ~{mismatchesMismatches} \
      ~{inIn} \
      ~{readsReads} \
      ~{vsVs} \
      ~{precursorPrecursor} \
      ~{mappingsMappings}
  >>>
}