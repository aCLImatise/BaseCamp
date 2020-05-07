version 1.0

task MedpyDicomSlicesToVolume.pyInput {
  input {
    Boolean sS
    Boolean vV
    Boolean dD
    Boolean fF
    String? inputInput
    String? outputOutput
  }
  command <<<
    medpy_dicom_slices_to_volume.py input \
      ~{inputInput} \
      ~{true="-s" false="" sS} \
      ~{true="-v" false="" vV} \
      ~{true="-d" false="" dD} \
      ~{true="-f" false="" fF} \
      ~{outputOutput}
  >>>
}