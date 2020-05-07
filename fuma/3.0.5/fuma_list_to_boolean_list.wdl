version 1.0

task FumaListToBooleanList {
  input {
    String outputOutput
    String? inputInputFile
  }
  command <<<
    fuma-list-to-boolean-list \
      ~{inputInputFile} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""}
  >>>
}