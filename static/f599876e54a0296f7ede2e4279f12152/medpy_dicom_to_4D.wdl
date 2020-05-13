version 1.0

task MedpyDicomTo4D.pyInput {
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
    medpy_dicom_to_4D.py input \
      ~{inputInput} \
      ~{true="-v" false="" vV} \
      ~{true="-d" false="" dD} \
      ~{true="-f" false="" fF} \
      ~{outputOutput} \
      ~{dimensionDimension} \
      ~{offsetOffset}
  >>>
}