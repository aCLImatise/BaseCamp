version 1.0

task MergeReports.py {
  input {
    String inputInputBowtie
    String inputInputBlat
    String inputInputStar
    String inputInputBowtie2
    String inputInputBwa
    String inputInputSpotlight
    String inputInputCandidateFusionGenes
    String inputInputAmbiguous
    String supportingSupportingReadsBlat
    String supportingSupportingPairsBlat
    String supportingSupportingReadsStar
    String supportingSupportingPairsStar
    String supportingSupportingReadsBowtie2
    String supportingSupportingPairsBowtie2
    String supportingSupportingReadsBwa
    String supportingSupportingPairsBwa
    String supportingSupportingReadsSpotlight
    String supportingSupportingPairsSpotlight
    Boolean squishSquishReport
    String anchorAnchor2
    String outputOutput
  }
  command <<<
    merge_reports.py \
      ~{if defined(inputInputBowtie) then ("--input_bowtie " +  '"' + inputInputBowtie + '"') else ""} \
      ~{if defined(inputInputBlat) then ("--input_blat " +  '"' + inputInputBlat + '"') else ""} \
      ~{if defined(inputInputStar) then ("--input_star " +  '"' + inputInputStar + '"') else ""} \
      ~{if defined(inputInputBowtie2) then ("--input_bowtie2 " +  '"' + inputInputBowtie2 + '"') else ""} \
      ~{if defined(inputInputBwa) then ("--input_bwa " +  '"' + inputInputBwa + '"') else ""} \
      ~{if defined(inputInputSpotlight) then ("--input_spotlight " +  '"' + inputInputSpotlight + '"') else ""} \
      ~{if defined(inputInputCandidateFusionGenes) then ("--input_candidate_fusion_genes " +  '"' + inputInputCandidateFusionGenes + '"') else ""} \
      ~{if defined(inputInputAmbiguous) then ("--input_ambiguous " +  '"' + inputInputAmbiguous + '"') else ""} \
      ~{if defined(supportingSupportingReadsBlat) then ("--supporting_reads_blat " +  '"' + supportingSupportingReadsBlat + '"') else ""} \
      ~{if defined(supportingSupportingPairsBlat) then ("--supporting_pairs_blat " +  '"' + supportingSupportingPairsBlat + '"') else ""} \
      ~{if defined(supportingSupportingReadsStar) then ("--supporting_reads_star " +  '"' + supportingSupportingReadsStar + '"') else ""} \
      ~{if defined(supportingSupportingPairsStar) then ("--supporting_pairs_star " +  '"' + supportingSupportingPairsStar + '"') else ""} \
      ~{if defined(supportingSupportingReadsBowtie2) then ("--supporting_reads_bowtie2 " +  '"' + supportingSupportingReadsBowtie2 + '"') else ""} \
      ~{if defined(supportingSupportingPairsBowtie2) then ("--supporting_pairs_bowtie2 " +  '"' + supportingSupportingPairsBowtie2 + '"') else ""} \
      ~{if defined(supportingSupportingReadsBwa) then ("--supporting_reads_bwa " +  '"' + supportingSupportingReadsBwa + '"') else ""} \
      ~{if defined(supportingSupportingPairsBwa) then ("--supporting_pairs_bwa " +  '"' + supportingSupportingPairsBwa + '"') else ""} \
      ~{if defined(supportingSupportingReadsSpotlight) then ("--supporting_reads_spotlight " +  '"' + supportingSupportingReadsSpotlight + '"') else ""} \
      ~{if defined(supportingSupportingPairsSpotlight) then ("--supporting_pairs_spotlight " +  '"' + supportingSupportingPairsSpotlight + '"') else ""} \
      ~{true="--squish-report" false="" squishSquishReport} \
      ~{if defined(anchorAnchor2) then ("--anchor2 " +  '"' + anchorAnchor2 + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""}
  >>>
}