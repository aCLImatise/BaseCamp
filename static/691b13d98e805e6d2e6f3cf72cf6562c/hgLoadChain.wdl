version 1.0

task HgLoadChain {
  input {
    Boolean tTIndex
    Boolean noNoBin
    Boolean noNoSort
    String oldOldTable
    String sqlSqlTable
    String normNormScore
    String qQPrefix
    Boolean testTest
    String? databaseDatabase
    String? chrChrNTrack
    String? chrChrNChain
  }
  command <<<
    hgLoadChain \
      ~{databaseDatabase} \
      ~{true="-tIndex" false="" tTIndex} \
      ~{true="-noBin" false="" noNoBin} \
      ~{true="-noSort" false="" noNoSort} \
      ~{if defined(oldOldTable) then ("-oldTable " +  '"' + oldOldTable + '"') else ""} \
      ~{if defined(sqlSqlTable) then ("-sqlTable " +  '"' + sqlSqlTable + '"') else ""} \
      ~{if defined(normNormScore) then ("-normScore " +  '"' + normNormScore + '"') else ""} \
      ~{if defined(qQPrefix) then ("-qPrefix " +  '"' + qQPrefix + '"') else ""} \
      ~{true="-test" false="" testTest} \
      ~{chrChrNTrack} \
      ~{chrChrNChain}
  >>>
}