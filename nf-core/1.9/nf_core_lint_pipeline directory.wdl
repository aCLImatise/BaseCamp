version 1.0

task NfCoreLintPipeline directory {
  input {
    String? optionsOptions
    String? pipelinePipelineDirectory
  }
  command <<<
    nf-core lint pipeline directory \
      ~{optionsOptions} \
      ~{pipelinePipelineDirectory}
  >>>
}