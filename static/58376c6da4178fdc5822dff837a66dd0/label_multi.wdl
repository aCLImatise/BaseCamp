version 1.0

task LabelMulti.py {
  input {
    String inputInput
    String dataData
    String labelLabel
    String pairsPairs
    String outputOutput
  }
  command <<<
    label_multi.py \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(dataData) then ("--data " +  '"' + dataData + '"') else ""} \
      ~{if defined(labelLabel) then ("--label " +  '"' + labelLabel + '"') else ""} \
      ~{if defined(pairsPairs) then ("--pairs " +  '"' + pairsPairs + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""}
  >>>
}