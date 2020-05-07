version 1.0

task MedpyIntersection.pyInput1 {
  input {
    Boolean vV
    Boolean dD
    Boolean fF
    String? inputInput1
    String? inputInput2
    String? outputOutput1
    String? outputOutput2
  }
  command <<<
    medpy_intersection.py input1 \
      ~{inputInput1} \
      ~{true="-v" false="" vV} \
      ~{true="-d" false="" dD} \
      ~{true="-f" false="" fF} \
      ~{inputInput2} \
      ~{outputOutput1} \
      ~{outputOutput2}
  >>>
}