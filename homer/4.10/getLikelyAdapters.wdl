version 1.0

task GetLikelyAdapters.pl {
  input {
    Boolean lenLen
    Boolean nN
    Boolean sS
    Boolean startStart
    Boolean endEnd
  }
  command <<<
    getLikelyAdapters.pl \
      ~{true="-len" false="" lenLen} \
      ~{true="-n" false="" nN} \
      ~{true="-S" false="" sS} \
      ~{true="-start" false="" startStart} \
      ~{true="-end" false="" endEnd}
  >>>
}