version 1.0

task InitializeTranscriptDatasource {
  input {
    String? gtfGtfFiles
    String? fastFastAFiles
    String? outputOutputDir
    String? genomeGenomeBuild
    String? versionVersion
  }
  command <<<
    initializeTranscriptDatasource \
      ~{gtfGtfFiles} \
      ~{fastFastAFiles} \
      ~{outputOutputDir} \
      ~{genomeGenomeBuild} \
      ~{versionVersion}
  >>>
}