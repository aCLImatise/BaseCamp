version 1.0

task NfCoreLicencesPipeline name {
  input {
    String? optionsOptions
    String? pipelinePipelineName
  }
  command <<<
    nf-core licences pipeline name \
      ~{optionsOptions} \
      ~{pipelinePipelineName}
  >>>
}