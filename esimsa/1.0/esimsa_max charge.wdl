version 1.0

task EsimsaMax charge {
  input {
    String? peakPeakList
    Int? maxMaxCharge
    String? outputOutput
  }
  command <<<
    esimsa max charge \
      ~{peakPeakList} \
      ~{maxMaxCharge} \
      ~{outputOutput}
  >>>
}