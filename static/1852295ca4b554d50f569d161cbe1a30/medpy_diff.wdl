version 1.0

task MedpyDiff.pyInput1 {
  input {
    Boolean vV
    Boolean dD
    Boolean fF
    String? inputInput1
    String? inputInput2
  }
  command <<<
    medpy_diff.py input1 \
      ~{inputInput1} \
      ~{true="-v" false="" vV} \
      ~{true="-d" false="" dD} \
      ~{true="-f" false="" fF} \
      ~{inputInput2}
  >>>
}