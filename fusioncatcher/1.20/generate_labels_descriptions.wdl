version 1.0

task GenerateLabelsDescriptions.py {
  input {
    String outputOutput
  }
  command <<<
    generate_labels_descriptions.py \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""}
  >>>
}