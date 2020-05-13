version 1.0

task DimspyUnzip {
  input {
    String inputInput
    String outputOutput
  }
  command <<<
    dimspy unzip \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""}
  >>>
}