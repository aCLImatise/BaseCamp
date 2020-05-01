version 1.0

task Mpa {
  input {
    String mpaMpaDirectory
    String loggingLoggingLevel
    String inputInput
    String outputOutput
  }
  command <<<
    mpa \
      ~{if defined(mpaMpaDirectory) then ("--mpa-directory " +  '"' + mpaMpaDirectory + '"') else ""} \
      ~{if defined(loggingLoggingLevel) then ("--logging-level " +  '"' + loggingLoggingLevel + '"') else ""} \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""}
  >>>
}