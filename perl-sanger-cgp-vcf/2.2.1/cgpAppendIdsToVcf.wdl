version 1.0

task CgpAppendIdsToVcf.pl {
  input {
    Boolean idIdStart
  }
  command <<<
    cgpAppendIdsToVcf.pl \
      ~{true="--idstart" false="" idIdStart}
  >>>
}