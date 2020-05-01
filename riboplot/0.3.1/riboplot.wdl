version 1.0

task Riboplot {
  input {
    String rnaRnaFile
    String readReadLengths
    String readReadOffsets
    String colorColorScheme
    String htmlHtmlFile
    String outputOutputPath
    Boolean debugDebug
    String riboRiboFile
    String transcriptomeTranscriptomeFastA
    String transcriptTranscriptName
  }
  command <<<
    riboplot \
      ~{if defined(rnaRnaFile) then ("--rna_file " +  '"' + rnaRnaFile + '"') else ""} \
      ~{if defined(readReadLengths) then ("--read_lengths " +  '"' + readReadLengths + '"') else ""} \
      ~{if defined(readReadOffsets) then ("--read_offsets " +  '"' + readReadOffsets + '"') else ""} \
      ~{if defined(colorColorScheme) then ("--color_scheme " +  '"' + colorColorScheme + '"') else ""} \
      ~{if defined(htmlHtmlFile) then ("--html_file " +  '"' + htmlHtmlFile + '"') else ""} \
      ~{if defined(outputOutputPath) then ("--output_path " +  '"' + outputOutputPath + '"') else ""} \
      ~{true="--debug" false="" debugDebug} \
      ~{if defined(riboRiboFile) then ("--ribo_file " +  '"' + riboRiboFile + '"') else ""} \
      ~{if defined(transcriptomeTranscriptomeFastA) then ("--transcriptome_fasta " +  '"' + transcriptomeTranscriptomeFastA + '"') else ""} \
      ~{if defined(transcriptTranscriptName) then ("--transcript_name " +  '"' + transcriptTranscriptName + '"') else ""}
  >>>
}