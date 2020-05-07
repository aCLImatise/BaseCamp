version 1.0

task EsimsaPeaklistOutput {
  input {
    Int? maxMaxCharge
    String? outputOutput
  }
  command <<<
    esimsa peaklist output \
      ~{maxMaxCharge} \
      ~{outputOutput}
  >>>
}