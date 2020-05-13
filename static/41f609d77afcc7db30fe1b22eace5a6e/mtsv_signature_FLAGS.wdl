version 1.0

task MtsvSignatureFLAGS {
  input {
    String indexIndex
    String inputInput
    String lcaLca
    String outputOutput
    String? optionsOptions
  }
  command <<<
    mtsv-signature FLAGS \
      ~{optionsOptions} \
      ~{if defined(indexIndex) then ("--index " +  '"' + indexIndex + '"') else ""} \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(lcaLca) then ("--lca " +  '"' + lcaLca + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""}
  >>>
}