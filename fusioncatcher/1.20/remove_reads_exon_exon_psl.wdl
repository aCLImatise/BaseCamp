version 1.0

task RemoveReadsExonExonPsl.py {
  input {
    String inputInputPsl
    String inputInputTranscriptome
    String outputOutputPsl
  }
  command <<<
    remove_reads_exon_exon_psl.py \
      ~{if defined(inputInputPsl) then ("--input_psl " +  '"' + inputInputPsl + '"') else ""} \
      ~{if defined(inputInputTranscriptome) then ("--input_transcriptome " +  '"' + inputInputTranscriptome + '"') else ""} \
      ~{if defined(outputOutputPsl) then ("--output_psl " +  '"' + outputOutputPsl + '"') else ""}
  >>>
}