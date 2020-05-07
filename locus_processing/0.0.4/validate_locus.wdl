version 1.0

task ValidateLocus {
  input {
    File inputInput
    Directory inputInputDirectory
    String? optionsOptions
  }
  command <<<
    validate_locus \
      ~{optionsOptions} \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(inputInputDirectory) then ("--input-directory " +  '"' + inputInputDirectory + '"') else ""}
  >>>
}