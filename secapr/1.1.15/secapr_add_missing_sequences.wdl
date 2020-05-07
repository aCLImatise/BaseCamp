version 1.0

task SecaprAddMissingSequences {
  input {
    String inputInput
    String outputOutput
  }
  command <<<
    secapr add_missing_sequences \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""}
  >>>
}