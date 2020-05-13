version 1.0

task MtsvSignatureOPTIONS {
  input {
    String indexIndex
    String inputInput
    String lcaLca
    String outputOutput
    String? flagsFlags
    String? optionsOptions
  }
  command <<<
    mtsv-signature OPTIONS \
      ~{flagsFlags} \
      ~{if defined(indexIndex) then ("--index " +  '"' + indexIndex + '"') else ""} \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(lcaLca) then ("--lca " +  '"' + lcaLca + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{optionsOptions}
  >>>
}