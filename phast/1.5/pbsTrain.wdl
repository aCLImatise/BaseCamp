version 1.0

task PbsTrain {
  input {
    String nrowsNrows
    String nbytesNbytes
    Boolean noNoGreedy
    String noNoTrain
    File logLog
  }
  command <<<
    pbsTrain \
      ~{if defined(nrowsNrows) then ("--nrows " +  '"' + nrowsNrows + '"') else ""} \
      ~{if defined(nbytesNbytes) then ("--nbytes " +  '"' + nbytesNbytes + '"') else ""} \
      ~{true="--no-greedy" false="" noNoGreedy} \
      ~{if defined(noNoTrain) then ("--no-train " +  '"' + noNoTrain + '"') else ""} \
      ~{if defined(logLog) then ("--log " +  '"' + logLog + '"') else ""}
  >>>
}