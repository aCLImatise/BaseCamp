version 1.0

task RemoveReadsExonExonMap.py {
  input {
    String inputInputExonExon
    String inputInputTranscriptome
    Boolean onlyOnlyPairs
    String outputOutputExonExon
  }
  command <<<
    remove_reads_exon_exon_map.py \
      ~{if defined(inputInputExonExon) then ("--input_exon_exon " +  '"' + inputInputExonExon + '"') else ""} \
      ~{if defined(inputInputTranscriptome) then ("--input_transcriptome " +  '"' + inputInputTranscriptome + '"') else ""} \
      ~{true="--only_pairs" false="" onlyOnlyPairs} \
      ~{if defined(outputOutputExonExon) then ("--output_exon_exon " +  '"' + outputOutputExonExon + '"') else ""}
  >>>
}