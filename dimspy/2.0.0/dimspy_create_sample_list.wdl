version 1.0

task DimspyCreateSampleList {
  input {
    String inputInput
    String outputOutput
    String delimiterDelimiter
  }
  command <<<
    dimspy create-sample-list \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(delimiterDelimiter) then ("--delimiter " +  '"' + delimiterDelimiter + '"') else ""}
  >>>
}