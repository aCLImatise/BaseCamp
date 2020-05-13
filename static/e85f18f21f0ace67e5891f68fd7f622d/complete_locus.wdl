version 1.0

task CompleteLocus {
  input {
    File inputInput
    Directory inputInputDirectory
    Directory outputOutputDirectory
    Boolean suppressSuppressWarnings
    String? optionsOptions
  }
  command <<<
    complete_locus \
      ~{optionsOptions} \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(inputInputDirectory) then ("--input-directory " +  '"' + inputInputDirectory + '"') else ""} \
      ~{if defined(outputOutputDirectory) then ("--output-directory " +  '"' + outputOutputDirectory + '"') else ""} \
      ~{if defined(suppressSuppressWarnings) then ("--suppress-warnings " +  '"' + suppressSuppressWarnings + '"') else ""}
  >>>
}