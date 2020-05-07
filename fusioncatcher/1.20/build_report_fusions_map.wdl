version 1.0

task BuildReportFusionsMap.py {
  input {
    String inputInputFastQ
    String inputInputFastAJunCs
    String inputInputFusionSummary
    String inputInputFusionSummaryMore
    String inputInputCandidateFusionGenes
    String inputInputCandidateFusionGenesReads
    String inputInputUnmappedReads
    String inputInputCandidateFusionsMissingMates
    String inputInputExons
    String outputOutputSuperSummary
    String outputOutputZipFastA
    String suSuPortingUniqueReads
    String anchorAnchor2
    String inputInputGenome2bit
    String blatBlatDir
    String inputInputGenomeBowtie2
    String bowtie2Bowtie2Dir
    String threadsThreads
    String tmpTmpDir
    String pslPslAlignmentType
    String samSamAlignment
    Boolean junctionJunction
    Boolean velvetVelvet
    String velvetVelvetDir
    String outputOutputAllCandidateFusionGenesReads
  }
  command <<<
    build_report_fusions_map.py \
      ~{if defined(inputInputFastQ) then ("--input_fastq " +  '"' + inputInputFastQ + '"') else ""} \
      ~{if defined(inputInputFastAJunCs) then ("--input_fasta_juncs " +  '"' + inputInputFastAJunCs + '"') else ""} \
      ~{if defined(inputInputFusionSummary) then ("--input_fusion_summary " +  '"' + inputInputFusionSummary + '"') else ""} \
      ~{if defined(inputInputFusionSummaryMore) then ("--input_fusion_summary_more " +  '"' + inputInputFusionSummaryMore + '"') else ""} \
      ~{if defined(inputInputCandidateFusionGenes) then ("--input_candidate_fusion_genes " +  '"' + inputInputCandidateFusionGenes + '"') else ""} \
      ~{if defined(inputInputCandidateFusionGenesReads) then ("--input_candidate_fusion_genes_reads " +  '"' + inputInputCandidateFusionGenesReads + '"') else ""} \
      ~{if defined(inputInputUnmappedReads) then ("--input_unmapped_reads " +  '"' + inputInputUnmappedReads + '"') else ""} \
      ~{if defined(inputInputCandidateFusionsMissingMates) then ("--input_candidate_fusions_missing_mates " +  '"' + inputInputCandidateFusionsMissingMates + '"') else ""} \
      ~{if defined(inputInputExons) then ("--input_exons " +  '"' + inputInputExons + '"') else ""} \
      ~{if defined(outputOutputSuperSummary) then ("--output_super_summary " +  '"' + outputOutputSuperSummary + '"') else ""} \
      ~{if defined(outputOutputZipFastA) then ("--output_zip_fasta " +  '"' + outputOutputZipFastA + '"') else ""} \
      ~{if defined(suSuPortingUniqueReads) then ("--suporting_unique_reads " +  '"' + suSuPortingUniqueReads + '"') else ""} \
      ~{if defined(anchorAnchor2) then ("--anchor2 " +  '"' + anchorAnchor2 + '"') else ""} \
      ~{if defined(inputInputGenome2bit) then ("--input_genome_2bit " +  '"' + inputInputGenome2bit + '"') else ""} \
      ~{if defined(blatBlatDir) then ("--blat-dir " +  '"' + blatBlatDir + '"') else ""} \
      ~{if defined(inputInputGenomeBowtie2) then ("--input_genome_bowtie2 " +  '"' + inputInputGenomeBowtie2 + '"') else ""} \
      ~{if defined(bowtie2Bowtie2Dir) then ("--bowtie2-dir " +  '"' + bowtie2Bowtie2Dir + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(tmpTmpDir) then ("--tmp_dir " +  '"' + tmpTmpDir + '"') else ""} \
      ~{if defined(pslPslAlignmentType) then ("--psl_alignment_type " +  '"' + pslPslAlignmentType + '"') else ""} \
      ~{if defined(samSamAlignment) then ("--sam_alignment " +  '"' + samSamAlignment + '"') else ""} \
      ~{true="--junction" false="" junctionJunction} \
      ~{true="--velvet" false="" velvetVelvet} \
      ~{if defined(velvetVelvetDir) then ("--velvet-dir " +  '"' + velvetVelvetDir + '"') else ""} \
      ~{if defined(outputOutputAllCandidateFusionGenesReads) then ("--output_all_candidate_fusion_genes_reads " +  '"' + outputOutputAllCandidateFusionGenesReads + '"') else ""}
  >>>
}