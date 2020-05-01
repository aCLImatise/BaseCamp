version 1.0

task GenerateExonExonJunctions.py {
  input {
    String inputInputFusionGenes
    String inputInputFastATranscripts
    String inputInputDatabaseTranscripts
    String overlapOverlapRead
    Int lengthLengthReadsFilename
    Int lengthLengthReads
    Boolean uniqueUniqueCutSequences
    Boolean uniqueUniqueCutSequencesSamePair
    String outputOutputCutJunction
    String outputOutputFullJunction
    String outputOutputUniqueCutSequencesSamePair
    String outputOutputCountSeq
    String outputOutputCountNuc
  }
  command <<<
    generate_exon-exon_junctions.py \
      ~{if defined(inputInputFusionGenes) then ("--input_fusion_genes " +  '"' + inputInputFusionGenes + '"') else ""} \
      ~{if defined(inputInputFastATranscripts) then ("--input_fasta_transcripts " +  '"' + inputInputFastATranscripts + '"') else ""} \
      ~{if defined(inputInputDatabaseTranscripts) then ("--input_database_transcripts " +  '"' + inputInputDatabaseTranscripts + '"') else ""} \
      ~{if defined(overlapOverlapRead) then ("--overlap_read " +  '"' + overlapOverlapRead + '"') else ""} \
      ~{if defined(lengthLengthReadsFilename) then ("--length_reads_filename " +  '"' + lengthLengthReadsFilename + '"') else ""} \
      ~{if defined(lengthLengthReads) then ("--length_reads " +  '"' + lengthLengthReads + '"') else ""} \
      ~{true="--unique_cut_sequences" false="" uniqueUniqueCutSequences} \
      ~{true="--unique_cut_sequences_same_pair" false="" uniqueUniqueCutSequencesSamePair} \
      ~{if defined(outputOutputCutJunction) then ("--output_cut_junction " +  '"' + outputOutputCutJunction + '"') else ""} \
      ~{if defined(outputOutputFullJunction) then ("--output_full_junction " +  '"' + outputOutputFullJunction + '"') else ""} \
      ~{if defined(outputOutputUniqueCutSequencesSamePair) then ("--output_unique_cut_sequences_same_pair " +  '"' + outputOutputUniqueCutSequencesSamePair + '"') else ""} \
      ~{if defined(outputOutputCountSeq) then ("--output_count_seq " +  '"' + outputOutputCountSeq + '"') else ""} \
      ~{if defined(outputOutputCountNuc) then ("--output_count_nuc " +  '"' + outputOutputCountNuc + '"') else ""}
  >>>
}