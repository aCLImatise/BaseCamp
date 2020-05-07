version 1.0

task MedpyExtractSubVolume.pyImage {
  input {
    Boolean fF
    Boolean vV
    Boolean dD
    String? imageImage
    String? outputOutput
    String? volumeVolume
  }
  command <<<
    medpy_extract_sub_volume.py image \
      ~{imageImage} \
      ~{true="-f" false="" fF} \
      ~{true="-v" false="" vV} \
      ~{true="-d" false="" dD} \
      ~{outputOutput} \
      ~{volumeVolume}
  >>>
}