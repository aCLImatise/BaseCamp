version 1.0

task FusioncatcherToCG {
  input {
    String inputInputFormat
    String dataDataDirectory
    String outputOutput
    String? inputInputFile
  }
  command <<<
    fusioncatcher-to-CG \
      ~{inputInputFile} \
      ~{if defined(inputInputFormat) then ("--input-format " +  '"' + inputInputFormat + '"') else ""} \
      ~{if defined(dataDataDirectory) then ("--data-directory " +  '"' + dataDataDirectory + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""}
  >>>
}