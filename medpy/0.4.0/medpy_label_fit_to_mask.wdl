version 1.0

task MedpyLabelFitToMask.py {
  input {
    Boolean vV
    Boolean dD
    Boolean fF
    String? imageImage
    String? maskMask
    String? outputOutput
  }
  command <<<
    medpy_label_fit_to_mask.py \
      ~{imageImage} \
      ~{true="-v" false="" vV} \
      ~{true="-d" false="" dD} \
      ~{true="-f" false="" fF} \
      ~{maskMask} \
      ~{outputOutput}
  >>>
}