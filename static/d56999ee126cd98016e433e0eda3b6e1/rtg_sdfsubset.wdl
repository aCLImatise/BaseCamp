version 1.0

task RtgSdfsubset {
  input {
    String inputInput
    String outputOutput
  }
  command <<<
    rtg sdfsubset \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""}
  >>>
}