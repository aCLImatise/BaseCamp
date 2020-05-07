version 1.0

task MedpyExtractMinMax.py {
  input {
    Boolean vV
    Boolean dD
    Boolean fF
    String? csvCsv
    String? imagesImages
  }
  command <<<
    medpy_extract_min_max.py \
      ~{csvCsv} \
      ~{true="-v" false="" vV} \
      ~{true="-d" false="" dD} \
      ~{true="-f" false="" fF} \
      ~{imagesImages}
  >>>
}