version 1.0

task MsslookupMakedecoy {
  input {
    String iI
    String dbfileDbfile
    String oO
    String scrambleScramble
    Boolean ignoreIgnoreTargetHits
    Boolean noNoTrypsin
    String miscMiscLeav
    Int minMinLen
    Int maxMaxShuffle
  }
  command <<<
    msslookup makedecoy \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(dbfileDbfile) then ("--dbfile " +  '"' + dbfileDbfile + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(scrambleScramble) then ("--scramble " +  '"' + scrambleScramble + '"') else ""} \
      ~{true="--ignore-target-hits" false="" ignoreIgnoreTargetHits} \
      ~{true="--notrypsin" false="" noNoTrypsin} \
      ~{if defined(miscMiscLeav) then ("--miscleav " +  '"' + miscMiscLeav + '"') else ""} \
      ~{if defined(minMinLen) then ("--minlen " +  '"' + minMinLen + '"') else ""} \
      ~{if defined(maxMaxShuffle) then ("--maxshuffle " +  '"' + maxMaxShuffle + '"') else ""}
  >>>
}