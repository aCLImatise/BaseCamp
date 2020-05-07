version 1.0

task Locus2bed {
  input {
    File inputInput
    Directory inputInputDirectory
    String prefixPrefix
    String? optionsOptions
  }
  command <<<
    locus2bed \
      ~{optionsOptions} \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(inputInputDirectory) then ("--input-directory " +  '"' + inputInputDirectory + '"') else ""} \
      ~{if defined(prefixPrefix) then ("--prefix " +  '"' + prefixPrefix + '"') else ""}
  >>>
}