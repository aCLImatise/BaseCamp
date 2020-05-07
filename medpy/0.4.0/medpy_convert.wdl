version 1.0

task MedpyConvert.pyInput {
  input {
    Boolean eE
    Boolean vV
    Boolean dD
    Boolean fF
    String? inputInput
    String? outputOutput
  }
  command <<<
    medpy_convert.py input \
      ~{inputInput} \
      ~{true="-e" false="" eE} \
      ~{true="-v" false="" vV} \
      ~{true="-d" false="" dD} \
      ~{true="-f" false="" fF} \
      ~{outputOutput}
  >>>
}