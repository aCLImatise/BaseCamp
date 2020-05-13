version 1.0

task NfCoreBumpVersionOPTIONSNew version {
  input {
    String? pipelinePipelineDirectory
    String? newNewVersion
  }
  command <<<
    nf-core bump-version OPTIONS new version \
      ~{pipelinePipelineDirectory} \
      ~{newNewVersion}
  >>>
}