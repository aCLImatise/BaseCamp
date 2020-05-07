version 1.0

task NfCoreBumpVersionNew version {
  input {
    String? optionsOptions
    String? pipelinePipelineDirectory
    String? newNewVersion
  }
  command <<<
    nf-core bump-version new version \
      ~{optionsOptions} \
      ~{pipelinePipelineDirectory} \
      ~{newNewVersion}
  >>>
}