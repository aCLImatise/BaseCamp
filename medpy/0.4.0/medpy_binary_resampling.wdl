version 1.0

task MedpyBinaryResampling.py {
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
    medpy_binary_resampling.py \
      ~{inputInput} \
      ~{if defined(orderOrder) then ("--order " +  '"' + orderOrder + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="-d" false="" dD} \
      ~{true="--force" false="" forceForce} \
      ~{outputOutput} \
      ~{spacingSpacing}
  >>>
}