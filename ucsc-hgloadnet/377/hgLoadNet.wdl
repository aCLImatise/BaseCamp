version 1.0

task HgLoadNet {
  input {
    Boolean noNoBin
    String oldOldTable
    String sqlSqlTable
    String qQPrefix
    String warnWarn
    String testTest
  }
  command <<<
    hgLoadNet \
      ~{true="-noBin" false="" noNoBin} \
      ~{if defined(oldOldTable) then ("-oldTable " +  '"' + oldOldTable + '"') else ""} \
      ~{if defined(sqlSqlTable) then ("-sqlTable " +  '"' + sqlSqlTable + '"') else ""} \
      ~{if defined(qQPrefix) then ("-qPrefix " +  '"' + qQPrefix + '"') else ""} \
      ~{if defined(warnWarn) then ("-warn " +  '"' + warnWarn + '"') else ""} \
      ~{if defined(testTest) then ("-test " +  '"' + testTest + '"') else ""}
  >>>
}