version 1.0

task MedpyResample.pyInput {
  input {
    String orderOrder
    Boolean verboseVerbose
    Boolean dD
    Boolean forceForce
    String? inputInput
    String? outputOutput
    String? spacingSpacing
  }
  command <<<
    medpy_resample.py input \
      ~{inputInput} \
      ~{if defined(orderOrder) then ("--order " +  '"' + orderOrder + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="-d" false="" dD} \
      ~{true="--force" false="" forceForce} \
      ~{outputOutput} \
      ~{spacingSpacing}
  >>>
}