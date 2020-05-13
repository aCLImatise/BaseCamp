version 1.0

task MergePreds.py {
  input {
    String? combineCombine
    String? theThe
    String? misclassifiedMisclassified
    String? samplesSamples
    String? ofOf
    String? differentDifferent
    String? phenotypesPhenotypes
    Int? intoInto
    String? dataData
    String? matricesMatrices
  }
  command <<<
    merge_preds.py \
      ~{combineCombine} \
      ~{theThe} \
      ~{misclassifiedMisclassified} \
      ~{samplesSamples} \
      ~{ofOf} \
      ~{differentDifferent} \
      ~{phenotypesPhenotypes} \
      ~{intoInto} \
      ~{dataData} \
      ~{matricesMatrices}
  >>>
}