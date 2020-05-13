version 1.0

task BuildReportFusionsPsl2.py {
  input {
    String inputInputFastQ
    String inputInputFusionPsl
    String inputInputCandidateFusionGenesReads
    String inputInputUnmappedReads
    String outputOutputSuperSummary
    String outputOutputZipFastA
    String suSuPortingUniqueReads
    String anchorAnchor2
    String trimTrimComplex
    String inputInputGenome2bit
    String inputInputGenomeBowtie2
    String pslPslAlignmentType
    String blatBlatDir
    String samSamAlignment
    String bowtie2Bowtie2Dir
    String mismatchesMismatches
    String mismatchesMismatchesGap
    Boolean junctionJunction
    String threadsThreads
    String tmpTmpDir
    Boolean velvetVelvet
    String velvetVelvetDir
  }
  command <<<
    build_report_fusions_psl2.py \
      ~{if defined(inputInputFastQ) then ("--input_fastq " +  '"' + inputInputFastQ + '"') else ""} \
      ~{if defined(inputInputFusionPsl) then ("--input_fusion_psl " +  '"' + inputInputFusionPsl + '"') else ""} \
      ~{if defined(inputInputCandidateFusionGenesReads) then ("--input_candidate_fusion_genes_reads " +  '"' + inputInputCandidateFusionGenesReads + '"') else ""} \
      ~{if defined(inputInputUnmappedReads) then ("--input_unmapped_reads " +  '"' + inputInputUnmappedReads + '"') else ""} \
      ~{if defined(outputOutputSuperSummary) then ("--output_super_summary " +  '"' + outputOutputSuperSummary + '"') else ""} \
      ~{if defined(outputOutputZipFastA) then ("--output_zip_fasta " +  '"' + outputOutputZipFastA + '"') else ""} \
      ~{if defined(suSuPortingUniqueReads) then ("--suporting_unique_reads " +  '"' + suSuPortingUniqueReads + '"') else ""} \
      ~{if defined(anchorAnchor2) then ("--anchor2 " +  '"' + anchorAnchor2 + '"') else ""} \
      ~{if defined(trimTrimComplex) then ("--trim-complex " +  '"' + trimTrimComplex + '"') else ""} \
      ~{if defined(inputInputGenome2bit) then ("--input_genome_2bit " +  '"' + inputInputGenome2bit + '"') else ""} \
      ~{if defined(inputInputGenomeBowtie2) then ("--input_genome_bowtie2 " +  '"' + inputInputGenomeBowtie2 + '"') else ""} \
      ~{if defined(pslPslAlignmentType) then ("--psl_alignment_type " +  '"' + pslPslAlignmentType + '"') else ""} \
      ~{if defined(blatBlatDir) then ("--blat-dir " +  '"' + blatBlatDir + '"') else ""} \
      ~{if defined(samSamAlignment) then ("--sam_alignment " +  '"' + samSamAlignment + '"') else ""} \
      ~{if defined(bowtie2Bowtie2Dir) then ("--bowtie2-dir " +  '"' + bowtie2Bowtie2Dir + '"') else ""} \
      ~{if defined(mismatchesMismatches) then ("--mismatches " +  '"' + mismatchesMismatches + '"') else ""} \
      ~{if defined(mismatchesMismatchesGap) then ("--mismatches-gap " +  '"' + mismatchesMismatchesGap + '"') else ""} \
      ~{true="--junction" false="" junctionJunction} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(tmpTmpDir) then ("--tmp_dir " +  '"' + tmpTmpDir + '"') else ""} \
      ~{true="--velvet" false="" velvetVelvet} \
      ~{if defined(velvetVelvetDir) then ("--velvet-dir " +  '"' + velvetVelvetDir + '"') else ""}
  >>>
}