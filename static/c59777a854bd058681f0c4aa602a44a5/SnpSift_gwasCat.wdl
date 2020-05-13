version 1.0

task SnpSiftGwasCat {
  input {
    Boolean cC
    Boolean dD
    File dbDb
    Boolean downloadDownload
    String gG
    Boolean noNoDownload
    Boolean noNoLog
    Boolean vV
  }
  command <<<
    SnpSift gwasCat \
      ~{true="-c" false="" cC} \
      ~{true="-d" false="" dD} \
      ~{if defined(dbDb) then ("-db " +  '"' + dbDb + '"') else ""} \
      ~{true="-download" false="" downloadDownload} \
      ~{if defined(gG) then ("-g " +  '"' + gG + '"') else ""} \
      ~{true="-noDownload" false="" noNoDownload} \
      ~{true="-noLog" false="" noNoLog} \
      ~{true="-v" false="" vV}
  >>>
}