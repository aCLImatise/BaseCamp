version 1.0

task MedpyReslice3dTo4d.py {
  input {
    Boolean vV
    Boolean dD
    Boolean fF
    String? inputInput
    String? outputOutput
    String? dimensionDimension
    String? offsetOffset
  }
  command <<<
    medpy_reslice_3d_to_4d.py \
      ~{inputInput} \
      ~{true="-v" false="" vV} \
      ~{true="-d" false="" dD} \
      ~{true="-f" false="" fF} \
      ~{outputOutput} \
      ~{dimensionDimension} \
      ~{offsetOffset}
  >>>
}