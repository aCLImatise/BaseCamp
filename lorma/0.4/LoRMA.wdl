version 1.0

task LoRMA {
  input {
    Boolean bestBestFriends
    Boolean friendsFriends
    Boolean kK
    Boolean discardedDiscarded
    Boolean outputOutput
    Boolean readsReads
    Boolean nbNbCores
    Boolean verboseVerbose
  }
  command <<<
    LoRMA \
      ~{true="-bestfriends" false="" bestBestFriends} \
      ~{true="-friends" false="" friendsFriends} \
      ~{true="-k" false="" kK} \
      ~{true="-discarded" false="" discardedDiscarded} \
      ~{true="-output" false="" outputOutput} \
      ~{true="-reads" false="" readsReads} \
      ~{true="-nb-cores" false="" nbNbCores} \
      ~{true="-verbose" false="" verboseVerbose}
  >>>
}