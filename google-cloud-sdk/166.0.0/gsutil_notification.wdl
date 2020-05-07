version 1.0

task GsutilNotification {
  input {
    File tT
    String tT
    Boolean eE
    Boolean fF
    Boolean mM
    Boolean pP
    Boolean sS
    Boolean tT
  }
  command <<<
    gsutil notification \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""} \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""} \
      ~{true="-e" false="" eE} \
      ~{true="-f" false="" fF} \
      ~{true="-m" false="" mM} \
      ~{true="-p" false="" pP} \
      ~{true="-s" false="" sS} \
      ~{true="-t" false="" tT}
  >>>
}