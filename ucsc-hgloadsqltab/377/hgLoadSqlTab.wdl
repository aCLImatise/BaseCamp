version 1.0

task HgLoadSqlTab {
  input {
    String warnWarn
    String notNotOnServer
    String oldOldTable
  }
  command <<<
    hgLoadSqlTab \
      ~{if defined(warnWarn) then ("- warn " +  '"' + warnWarn + '"') else ""} \
      ~{if defined(notNotOnServer) then ("-notOnServer " +  '"' + notNotOnServer + '"') else ""} \
      ~{if defined(oldOldTable) then ("-oldTable " +  '"' + oldOldTable + '"') else ""}
  >>>
}