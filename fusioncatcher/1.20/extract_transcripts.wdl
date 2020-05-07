version 1.0

task ExtractTranscripts.py {
  input {
    String inputInputGenes
    String inputInputTranscriptome
    String outputOutput
  }
  command <<<
    extract_transcripts.py \
      ~{if defined(inputInputGenes) then ("--input_genes " +  '"' + inputInputGenes + '"') else ""} \
      ~{if defined(inputInputTranscriptome) then ("--input_transcriptome " +  '"' + inputInputTranscriptome + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""}
  >>>
}