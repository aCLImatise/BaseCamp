version 1.0

task CentrifugeClass {
  input {
    Boolean phred33Phred33
    Boolean phred64Phred64
    Boolean intIntQuals
    Boolean ignoreIgnoreQuals
    Boolean noNoFw
    Boolean norcNorc
    Int minMinHitLen
    Int kK
    String hostHostTaxIds
    String excludeExcludeTaxIds
    String outOutFmt
    String tabTabFmtCols
    Boolean tT
    Boolean quietQuiet
    File metMetFile
    Boolean metMetStderr
    Int metMet
    Boolean pP
    Boolean mmMm
    Boolean qcQcFilter
    Int seedSeed
    String nonNonDeterministic
  }
  command <<<
    centrifuge-class \
      ~{true="--phred33" false="" phred33Phred33} \
      ~{true="--phred64" false="" phred64Phred64} \
      ~{true="--int-quals" false="" intIntQuals} \
      ~{true="--ignore-quals" false="" ignoreIgnoreQuals} \
      ~{true="--nofw" false="" noNoFw} \
      ~{true="--norc" false="" norcNorc} \
      ~{if defined(minMinHitLen) then ("--min-hitlen " +  '"' + minMinHitLen + '"') else ""} \
      ~{if defined(kK) then ("-k " +  '"' + kK + '"') else ""} \
      ~{if defined(hostHostTaxIds) then ("--host-taxids " +  '"' + hostHostTaxIds + '"') else ""} \
      ~{if defined(excludeExcludeTaxIds) then ("--exclude-taxids " +  '"' + excludeExcludeTaxIds + '"') else ""} \
      ~{if defined(outOutFmt) then ("--out-fmt " +  '"' + outOutFmt + '"') else ""} \
      ~{if defined(tabTabFmtCols) then ("--tab-fmt-cols " +  '"' + tabTabFmtCols + '"') else ""} \
      ~{true="-t" false="" tT} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{if defined(metMetFile) then ("--met-file " +  '"' + metMetFile + '"') else ""} \
      ~{true="--met-stderr" false="" metMetStderr} \
      ~{if defined(metMet) then ("--met " +  '"' + metMet + '"') else ""} \
      ~{true="-p" false="" pP} \
      ~{true="--mm" false="" mmMm} \
      ~{true="--qc-filter" false="" qcQcFilter} \
      ~{if defined(seedSeed) then ("--seed " +  '"' + seedSeed + '"') else ""} \
      ~{if defined(nonNonDeterministic) then ("--non-deterministic " +  '"' + nonNonDeterministic + '"') else ""}
  >>>
}