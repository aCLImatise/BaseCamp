version 1.0

task MedpyLabelCount.py {
  input {
    Boolean vV
    Boolean dD
    String? imagesImages
  }
  command <<<
    medpy_label_count.py \
      ~{imagesImages} \
      ~{true="-v" false="" vV} \
      ~{true="-d" false="" dD}
  >>>
}