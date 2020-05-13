version 1.0

task HgTrackDb {
  input {
    String inIn
    String theThe
    String theThe
    String tableTable
    String forFor
    String strictStrict
    String specifySpecify
    String releaseRelease
    String settingsSettings
    String andAnd
    String? orgOrg
    String? databaseDatabase
    String? trackTrackDb
    String? trackTrackDbSql
    String? hgHgRoot
  }
  command <<<
    hgTrackDb \
      ~{orgOrg} \
      ~{if defined(inIn) then ("- in " +  '"' + inIn + '"') else ""} \
      ~{if defined(theThe) then ("- the " +  '"' + theThe + '"') else ""} \
      ~{if defined(theThe) then ("- the " +  '"' + theThe + '"') else ""} \
      ~{if defined(tableTable) then ("- table " +  '"' + tableTable + '"') else ""} \
      ~{if defined(forFor) then ("- for " +  '"' + forFor + '"') else ""} \
      ~{if defined(strictStrict) then ("-strict " +  '"' + strictStrict + '"') else ""} \
      ~{if defined(specifySpecify) then ("- Specify " +  '"' + specifySpecify + '"') else ""} \
      ~{if defined(releaseRelease) then ("-release " +  '"' + releaseRelease + '"') else ""} \
      ~{if defined(settingsSettings) then ("-settings " +  '"' + settingsSettings + '"') else ""} \
      ~{if defined(andAnd) then ("-  and " +  '"' + andAnd + '"') else ""} \
      ~{databaseDatabase} \
      ~{trackTrackDb} \
      ~{trackTrackDbSql} \
      ~{hgHgRoot}
  >>>
}