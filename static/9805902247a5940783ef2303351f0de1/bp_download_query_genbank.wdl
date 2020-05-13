version 1.0

task BpDownloadQueryGenbank.pl {
  input {
    String queryQuery
    String queryQueryFile
    File giGiFile
    String dbDb
    String outfileOutfile
    String formatFormat
    String verboseVerbose
    Int maxMaxIds
    Int relRelDate
    Int minMinDate
    String dateDateType
  }
  command <<<
    bp_download_query_genbank.pl \
      ~{if defined(queryQuery) then ("--query " +  '"' + queryQuery + '"') else ""} \
      ~{if defined(queryQueryFile) then ("--queryfile " +  '"' + queryQueryFile + '"') else ""} \
      ~{if defined(giGiFile) then ("--gifile " +  '"' + giGiFile + '"') else ""} \
      ~{if defined(dbDb) then ("--db " +  '"' + dbDb + '"') else ""} \
      ~{if defined(outfileOutfile) then ("--outfile " +  '"' + outfileOutfile + '"') else ""} \
      ~{if defined(formatFormat) then ("--format " +  '"' + formatFormat + '"') else ""} \
      ~{if defined(verboseVerbose) then ("--verbose " +  '"' + verboseVerbose + '"') else ""} \
      ~{if defined(maxMaxIds) then ("--maxids " +  '"' + maxMaxIds + '"') else ""} \
      ~{if defined(relRelDate) then ("--reldate " +  '"' + relRelDate + '"') else ""} \
      ~{if defined(minMinDate) then ("--mindate " +  '"' + minMinDate + '"') else ""} \
      ~{if defined(dateDateType) then ("--datetype " +  '"' + dateDateType + '"') else ""}
  >>>
}