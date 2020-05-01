version 1.0

task Stdbuf {
  input {
    String inputInput
    String outputOutput
    String errorError
    String? optionOption
    String? commandCommand
  }
  command <<<
    stdbuf \
      ~{optionOption} \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(errorError) then ("--error " +  '"' + errorError + '"') else ""} \
      ~{commandCommand}
  >>>
}