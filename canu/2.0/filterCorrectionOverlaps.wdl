version 1.0

task FilterCorrectionOverlaps {
  input {
    Boolean noNoLog
    Boolean noNoStats
  }
  command <<<
    filterCorrectionOverlaps \
      ~{true="-nolog" false="" noNoLog} \
      ~{true="-nostats" false="" noNoStats}
  >>>
}