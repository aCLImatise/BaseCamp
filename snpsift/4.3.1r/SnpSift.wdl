version 1.0

task SnpSift {
  input {
    Boolean dD
    Boolean downloadDownload
    Boolean noNoDownload
    Boolean noNoLog
    Boolean vV
  }
  command <<<
    SnpSift \
      ~{true="-d" false="" dD} \
      ~{true="-download" false="" downloadDownload} \
      ~{true="-noDownload" false="" noNoDownload} \
      ~{true="-noLog" false="" noNoLog} \
      ~{true="-v" false="" vV}
  >>>
}