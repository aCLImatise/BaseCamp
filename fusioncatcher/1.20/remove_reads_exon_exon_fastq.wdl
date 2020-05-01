version 1.0

task RemoveReadsExonExonFastq.py {
  input {
    String inputInputFastQ
    String inputInputFusions
    String inputInputTranscriptome
    String outputOutputFastQ
    String logLog
  }
  command <<<
    remove_reads_exon_exon_fastq.py \
      ~{if defined(inputInputFastQ) then ("--input_fastq " +  '"' + inputInputFastQ + '"') else ""} \
      ~{if defined(inputInputFusions) then ("--input_fusions " +  '"' + inputInputFusions + '"') else ""} \
      ~{if defined(inputInputTranscriptome) then ("--input_transcriptome " +  '"' + inputInputTranscriptome + '"') else ""} \
      ~{if defined(outputOutputFastQ) then ("--output_fastq " +  '"' + outputOutputFastQ + '"') else ""} \
      ~{if defined(logLog) then ("--log " +  '"' + logLog + '"') else ""}
  >>>
}