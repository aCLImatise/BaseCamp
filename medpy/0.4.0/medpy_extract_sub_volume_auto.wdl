version 1.0

task MedpyExtractSubVolumeAuto.py {
  input {
    Boolean fF
    Boolean vV
    Boolean dD
    String? imageImage
    String? outputOutput
    String? dimensionDimension
    Int? maxsizeMaxsize
  }
  command <<<
    medpy_extract_sub_volume_auto.py \
      ~{imageImage} \
      ~{true="-f" false="" fF} \
      ~{true="-v" false="" vV} \
      ~{true="-d" false="" dD} \
      ~{outputOutput} \
      ~{dimensionDimension} \
      ~{maxsizeMaxsize}
  >>>
}