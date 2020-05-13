version 1.0

task EsimsaOutput {
  input {
    String? peakPeakList
    Int? maxMaxCharge
    String? outputOutput
  }
  command <<<
    esimsa output \
      ~{peakPeakList} \
      ~{maxMaxCharge} \
      ~{outputOutput}
  >>>
}