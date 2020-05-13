version 1.0

task Mreps {
  input {
    String sS
    Boolean fastFastA
    String resRes
    String fromFrom
    String toTo
    String minsizeMinsize
    String maxsizeMaxsize
    String minMinPeriod
    String maxMaxPeriod
    String expExp
    Boolean allowAllowSmall
    String winWin
    Boolean versionVersion
    File xmlXmlOutput
    Boolean noNoPrint
  }
  command <<<
    mreps \
      ~{if defined(sS) then ("-s " +  '"' + sS + '"') else ""} \
      ~{true="-fasta" false="" fastFastA} \
      ~{if defined(resRes) then ("-res " +  '"' + resRes + '"') else ""} \
      ~{if defined(fromFrom) then ("-from " +  '"' + fromFrom + '"') else ""} \
      ~{if defined(toTo) then ("-to " +  '"' + toTo + '"') else ""} \
      ~{if defined(minsizeMinsize) then ("-minsize " +  '"' + minsizeMinsize + '"') else ""} \
      ~{if defined(maxsizeMaxsize) then ("-maxsize " +  '"' + maxsizeMaxsize + '"') else ""} \
      ~{if defined(minMinPeriod) then ("-minperiod " +  '"' + minMinPeriod + '"') else ""} \
      ~{if defined(maxMaxPeriod) then ("-maxperiod " +  '"' + maxMaxPeriod + '"') else ""} \
      ~{if defined(expExp) then ("-exp " +  '"' + expExp + '"') else ""} \
      ~{true="-allowsmall" false="" allowAllowSmall} \
      ~{if defined(winWin) then ("-win " +  '"' + winWin + '"') else ""} \
      ~{true="-version" false="" versionVersion} \
      ~{if defined(xmlXmlOutput) then ("-xmloutput " +  '"' + xmlXmlOutput + '"') else ""} \
      ~{true="-noprint" false="" noNoPrint}
  >>>
}