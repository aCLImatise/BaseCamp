version 1.0

task GetExons {
  input {
    String? inputInputGeneListFile
    String? transcriptTranscriptDsConfig
    String? outputOutputFileName
  }
  command <<<
    get_exons \
      ~{inputInputGeneListFile} \
      ~{transcriptTranscriptDsConfig} \
      ~{outputOutputFileName}
  >>>
}