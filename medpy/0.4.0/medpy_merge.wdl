version 1.0

task MedpyMerge.pyInput1 {
  input {
    Boolean eE
    Boolean vV
    Boolean dD
    Boolean fF
    String? inputInput1
    String? inputInput2
    String? outputOutput
  }
  command <<<
    medpy_merge.py input1 \
      ~{inputInput1} \
      ~{true="-e" false="" eE} \
      ~{true="-v" false="" vV} \
      ~{true="-d" false="" dD} \
      ~{true="-f" false="" fF} \
      ~{inputInput2} \
      ~{outputOutput}
  >>>
}