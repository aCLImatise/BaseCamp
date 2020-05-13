version 1.0

task Ribocount {
  input {
    String readReadLengths
    String readReadOffsets
    Boolean countCountFive
    Boolean countCountThree
    String htmlHtmlFile
    String outputOutputPath
    Boolean debugDebug
    String riboRiboFile
    String transcriptomeTranscriptomeFastA
  }
  command <<<
    ribocount \
      ~{if defined(readReadLengths) then ("--read_lengths " +  '"' + readReadLengths + '"') else ""} \
      ~{if defined(readReadOffsets) then ("--read_offsets " +  '"' + readReadOffsets + '"') else ""} \
      ~{true="--count_five" false="" countCountFive} \
      ~{true="--count_three" false="" countCountThree} \
      ~{if defined(htmlHtmlFile) then ("--html_file " +  '"' + htmlHtmlFile + '"') else ""} \
      ~{if defined(outputOutputPath) then ("--output_path " +  '"' + outputOutputPath + '"') else ""} \
      ~{true="--debug" false="" debugDebug} \
      ~{if defined(riboRiboFile) then ("--ribo_file " +  '"' + riboRiboFile + '"') else ""} \
      ~{if defined(transcriptomeTranscriptomeFastA) then ("--transcriptome_fasta " +  '"' + transcriptomeTranscriptomeFastA + '"') else ""}
  >>>
}