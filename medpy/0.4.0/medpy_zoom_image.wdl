version 1.0

task MedpyZoomImage.py {
  input {
    Boolean vV
    Boolean dD
    Boolean fF
    String? inputInput
    String? outputOutput
    String? dimensionDimension
    String? enhancementEnhancement
  }
  command <<<
    medpy_zoom_image.py \
      ~{inputInput} \
      ~{true="-v" false="" vV} \
      ~{true="-d" false="" dD} \
      ~{true="-f" false="" fF} \
      ~{outputOutput} \
      ~{dimensionDimension} \
      ~{enhancementEnhancement}
  >>>
}