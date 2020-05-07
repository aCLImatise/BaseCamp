version 1.0

task MedpySwapDimensions.py {
  input {
    Boolean vV
    Boolean dD
    Boolean fF
    String? inputInput
    String? outputOutput
    String? dimensionDimension1
    String? dimensionDimension2
  }
  command <<<
    medpy_swap_dimensions.py \
      ~{inputInput} \
      ~{true="-v" false="" vV} \
      ~{true="-d" false="" dD} \
      ~{true="-f" false="" fF} \
      ~{outputOutput} \
      ~{dimensionDimension1} \
      ~{dimensionDimension2}
  >>>
}