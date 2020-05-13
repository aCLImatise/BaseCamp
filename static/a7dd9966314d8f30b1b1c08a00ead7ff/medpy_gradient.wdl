version 1.0

task MedpyGradient.pyInput {
  input {
    Boolean vV
    Boolean dD
    Boolean fF
    String? inputInput
    String? outputOutput
  }
  command <<<
    medpy_gradient.py input \
      ~{inputInput} \
      ~{true="-v" false="" vV} \
      ~{true="-d" false="" dD} \
      ~{true="-f" false="" fF} \
      ~{outputOutput}
  >>>
}