version 1.0

task MedpyLabelSuperimposition.pyImage1 {
  input {
    Boolean vV
    Boolean dD
    Boolean fF
    String? imageImage1
    String? imageImage2
    String? outputOutput
  }
  command <<<
    medpy_label_superimposition.py image1 \
      ~{imageImage1} \
      ~{true="-v" false="" vV} \
      ~{true="-d" false="" dD} \
      ~{true="-f" false="" fF} \
      ~{imageImage2} \
      ~{outputOutput}
  >>>
}