version 1.0

task RtgHelpSdfsubset {
  input {
    String inputInput
    String outputOutput
  }
  command <<<
    rtg help sdfsubset \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""}
  >>>
}