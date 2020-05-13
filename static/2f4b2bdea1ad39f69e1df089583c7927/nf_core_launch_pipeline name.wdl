version 1.0

task NfCoreLaunchPipeline name {
  input {
    String? optionsOptions
    String? pipelinePipelineName
  }
  command <<<
    nf-core launch pipeline name \
      ~{optionsOptions} \
      ~{pipelinePipelineName}
  >>>
}