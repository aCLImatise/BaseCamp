version 1.0

task BedpeAnnotateFromBed {
  input {
    File bedBed
    File inIn
    File outOut
    Int colCol
    String colColName
    Boolean noNoDuplicates
    Boolean urlUrlDecode
    Boolean replaceReplaceUnderscore
    Boolean changelogChangelog
    Boolean tdxTdx
  }
  command <<<
    BedpeAnnotateFromBed \
      ~{if defined(bedBed) then ("-bed " +  '"' + bedBed + '"') else ""} \
      ~{if defined(inIn) then ("-in " +  '"' + inIn + '"') else ""} \
      ~{if defined(outOut) then ("-out " +  '"' + outOut + '"') else ""} \
      ~{if defined(colCol) then ("-col " +  '"' + colCol + '"') else ""} \
      ~{if defined(colColName) then ("-col_name " +  '"' + colColName + '"') else ""} \
      ~{true="-no_duplicates" false="" noNoDuplicates} \
      ~{true="-url_decode" false="" urlUrlDecode} \
      ~{true="-replace_underscore" false="" replaceReplaceUnderscore} \
      ~{true="--changelog" false="" changelogChangelog} \
      ~{true="--tdx" false="" tdxTdx}
  >>>
}