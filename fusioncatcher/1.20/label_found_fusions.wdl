version 1.0

task LabelFoundFusions.py {
  input {
    String inputInput
    String dataData
    Boolean dataDataNotCommutative
    String labelLabel
    String outputOutput
  }
  command <<<
    label_found_fusions.py \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(dataData) then ("--data " +  '"' + dataData + '"') else ""} \
      ~{true="--data-not-commutative" false="" dataDataNotCommutative} \
      ~{if defined(labelLabel) then ("--label " +  '"' + labelLabel + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""}
  >>>
}