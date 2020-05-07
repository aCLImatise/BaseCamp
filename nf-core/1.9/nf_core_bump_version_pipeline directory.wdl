version 1.0

task NfCoreBumpVersionPipeline directory {
  input {
    String? optionsOptions
    String? pipelinePipelineDirectory
    String? newNewVersion
  }
  command <<<
    nf-core bump-version pipeline directory \
      ~{optionsOptions} \
      ~{pipelinePipelineDirectory} \
      ~{newNewVersion}
  >>>
}