version 1.0

task MsslookupSeqspace {
  input {
    String iI
    String dbfileDbfile
    Boolean inInSourceFrag
    Boolean cutCutProline
    Int minMinLen
    Boolean noNoTrypsin
    String miscMiscLeav
  }
  command <<<
    msslookup seqspace \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(dbfileDbfile) then ("--dbfile " +  '"' + dbfileDbfile + '"') else ""} \
      ~{true="--insourcefrag" false="" inInSourceFrag} \
      ~{true="--cutproline" false="" cutCutProline} \
      ~{if defined(minMinLen) then ("--minlen " +  '"' + minMinLen + '"') else ""} \
      ~{true="--notrypsin" false="" noNoTrypsin} \
      ~{if defined(miscMiscLeav) then ("--miscleav " +  '"' + miscMiscLeav + '"') else ""}
  >>>
}