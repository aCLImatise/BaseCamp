version 1.0

task Behst.py {
  input {
    String targetTargetExtension
    String queryQueryExtension
    String geneGeneAnnotationFile
    String transcriptTranscriptFile
    Int interactionInteractionFile
    String? inputInputBedFile
    String? beBeHstDataFilesFolder
  }
  command <<<
    behst.py \
      ~{inputInputBedFile} \
      ~{if defined(targetTargetExtension) then ("--target-extension " +  '"' + targetTargetExtension + '"') else ""} \
      ~{if defined(queryQueryExtension) then ("--query-extension " +  '"' + queryQueryExtension + '"') else ""} \
      ~{if defined(geneGeneAnnotationFile) then ("--gene-annotation-file " +  '"' + geneGeneAnnotationFile + '"') else ""} \
      ~{if defined(transcriptTranscriptFile) then ("--transcript-file " +  '"' + transcriptTranscriptFile + '"') else ""} \
      ~{if defined(interactionInteractionFile) then ("--interaction-file " +  '"' + interactionInteractionFile + '"') else ""} \
      ~{beBeHstDataFilesFolder}
  >>>
}