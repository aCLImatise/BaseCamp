version 1.0

task MedpyFitIntoShape.pyInput {
  input {
    Boolean verboseVerbose
    Boolean dD
    Boolean forceForce
    String? inputInput
    String? outputOutput
    String? shapeShape
  }
  command <<<
    medpy_fit_into_shape.py input \
      ~{inputInput} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="-d" false="" dD} \
      ~{true="--force" false="" forceForce} \
      ~{outputOutput} \
      ~{shapeShape}
  >>>
}