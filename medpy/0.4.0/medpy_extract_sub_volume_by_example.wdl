version 1.0

task MedpyExtractSubVolumeByExample.py {
  input {
    String offsetOffset
    Boolean fF
    Boolean vV
    Boolean dD
    String? imageImage
    String? outputOutput
    String? maskMask
  }
  command <<<
    medpy_extract_sub_volume_by_example.py \
      ~{imageImage} \
      ~{if defined(offsetOffset) then ("--offset " +  '"' + offsetOffset + '"') else ""} \
      ~{true="-f" false="" fF} \
      ~{true="-v" false="" vV} \
      ~{true="-d" false="" dD} \
      ~{outputOutput} \
      ~{maskMask}
  >>>
}