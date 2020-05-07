version 1.0

task TangoDownload {
  input {
    String dlDlDir
    String tmpdirTmpdir
    String taxTaxDir
    String sqliteSqliteDb
    Boolean forceForce
    Boolean skipSkipCheck
    Boolean skipSkipIdMap
  }
  command <<<
    tango download \
      ~{if defined(dlDlDir) then ("--dldir " +  '"' + dlDlDir + '"') else ""} \
      ~{if defined(tmpdirTmpdir) then ("--tmpdir " +  '"' + tmpdirTmpdir + '"') else ""} \
      ~{if defined(taxTaxDir) then ("--taxdir " +  '"' + taxTaxDir + '"') else ""} \
      ~{if defined(sqliteSqliteDb) then ("--sqlitedb " +  '"' + sqliteSqliteDb + '"') else ""} \
      ~{true="--force" false="" forceForce} \
      ~{true="--skip_check" false="" skipSkipCheck} \
      ~{true="--skip_idmap" false="" skipSkipIdMap}
  >>>
}