version 1.0

task Join {
  input {
    Boolean checkCheckOrder
    Boolean noNoCheckOrder
    Boolean headerHeader
    Boolean zeroZeroTerminated
  }
  command <<<
    join \
      ~{true="--check-order" false="" checkCheckOrder} \
      ~{true="--nocheck-order" false="" noNoCheckOrder} \
      ~{true="--header" false="" headerHeader} \
      ~{true="--zero-terminated" false="" zeroZeroTerminated}
  >>>
}