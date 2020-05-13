version 1.0

task MedpyShrinkImage.py {
  input {
    Boolean vV
    Boolean dD
    Boolean fF
    String? inputInput
    String? outputOutput
    String? dimensionDimension
    String? discardDiscard
  }
  command <<<
    medpy_shrink_image.py \
      ~{inputInput} \
      ~{true="-v" false="" vV} \
      ~{true="-d" false="" dD} \
      ~{true="-f" false="" fF} \
      ~{outputOutput} \
      ~{dimensionDimension} \
      ~{discardDiscard}
  >>>
}