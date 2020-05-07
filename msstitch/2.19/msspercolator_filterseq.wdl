version 1.0

task MsspercolatorFilterseq {
  input {
    String iI
    String dD
    String oO
    String inInSourceFrag
    Boolean deDeAmiDate
    String dbfileDbfile
  }
  command <<<
    msspercolator filterseq \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(dD) then ("-d " +  '"' + dD + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(inInSourceFrag) then ("--insourcefrag " +  '"' + inInSourceFrag + '"') else ""} \
      ~{true="--deamidate" false="" deDeAmiDate} \
      ~{if defined(dbfileDbfile) then ("--dbfile " +  '"' + dbfileDbfile + '"') else ""}
  >>>
}