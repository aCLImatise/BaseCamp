version 1.0

task VtoolsFilter {
  input {
    File inputInput
    File outputOutput
    File trashTrash
    File paramsParamsFile
    String indexIndexSample
    Boolean immediateImmediateReturn
    String? optionsOptions
  }
  command <<<
    vtools-filter \
      ~{optionsOptions} \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(trashTrash) then ("--trash " +  '"' + trashTrash + '"') else ""} \
      ~{if defined(paramsParamsFile) then ("--params-file " +  '"' + paramsParamsFile + '"') else ""} \
      ~{if defined(indexIndexSample) then ("--index-sample " +  '"' + indexIndexSample + '"') else ""} \
      ~{true="--immediate-return" false="" immediateImmediateReturn}
  >>>
}