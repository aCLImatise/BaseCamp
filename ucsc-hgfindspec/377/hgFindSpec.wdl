version 1.0

task HgFindSpec {
  input {
    String releaseRelease
    String? orgOrgDir
    String? databaseDatabase
    String? hgHgFindSpec
    String? hgHgFindSpecSql
    String? hgHgRoot
  }
  command <<<
    hgFindSpec \
      ~{orgOrgDir} \
      ~{if defined(releaseRelease) then ("-release " +  '"' + releaseRelease + '"') else ""} \
      ~{databaseDatabase} \
      ~{hgHgFindSpec} \
      ~{hgHgFindSpecSql} \
      ~{hgHgRoot}
  >>>
}