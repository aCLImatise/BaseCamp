version 1.0

task MatamAssembly.py {
  input {
    String inputInputFastQ
    String refRefDb
    String outOutDir
    Boolean verboseVerbose
    String cpuCpu
    Int maxMaxMemory
    Int bestBest
    String evalueEvalue
    String scoreScoreThreshold
    Boolean straightStraightMode
    Int coverageCoverageThreshold
    String minMinIdentity
    Int minMinOverlapLength
    Int minMinReadNode
    Int minMinOverlapEdge
    Int seedSeed
    Float quorumQuorum
    String assemblerAssembler
    String readReadCorrection
    Boolean contigsContigsBinning
    Int minMinScaffoldLength
    Boolean performPerformTaxonomicAssignment
    Boolean trainingTrainingModel
    String rdpRdpCutOff
    Boolean keepKeepTmp
    Boolean debugDebug
    String resumeResumeFrom
    Boolean filterFilterOnly
  }
  command <<<
    matam_assembly.py \
      ~{if defined(inputInputFastQ) then ("--input_fastq " +  '"' + inputInputFastQ + '"') else ""} \
      ~{if defined(refRefDb) then ("--ref_db " +  '"' + refRefDb + '"') else ""} \
      ~{if defined(outOutDir) then ("--out_dir " +  '"' + outOutDir + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{if defined(cpuCpu) then ("--cpu " +  '"' + cpuCpu + '"') else ""} \
      ~{if defined(maxMaxMemory) then ("--max_memory " +  '"' + maxMaxMemory + '"') else ""} \
      ~{if defined(bestBest) then ("--best " +  '"' + bestBest + '"') else ""} \
      ~{if defined(evalueEvalue) then ("--evalue " +  '"' + evalueEvalue + '"') else ""} \
      ~{if defined(scoreScoreThreshold) then ("--score_threshold " +  '"' + scoreScoreThreshold + '"') else ""} \
      ~{true="--straight_mode" false="" straightStraightMode} \
      ~{if defined(coverageCoverageThreshold) then ("--coverage_threshold " +  '"' + coverageCoverageThreshold + '"') else ""} \
      ~{if defined(minMinIdentity) then ("--min_identity " +  '"' + minMinIdentity + '"') else ""} \
      ~{if defined(minMinOverlapLength) then ("--min_overlap_length " +  '"' + minMinOverlapLength + '"') else ""} \
      ~{if defined(minMinReadNode) then ("--min_read_node " +  '"' + minMinReadNode + '"') else ""} \
      ~{if defined(minMinOverlapEdge) then ("--min_overlap_edge " +  '"' + minMinOverlapEdge + '"') else ""} \
      ~{if defined(seedSeed) then ("--seed " +  '"' + seedSeed + '"') else ""} \
      ~{if defined(quorumQuorum) then ("--quorum " +  '"' + quorumQuorum + '"') else ""} \
      ~{if defined(assemblerAssembler) then ("--assembler " +  '"' + assemblerAssembler + '"') else ""} \
      ~{if defined(readReadCorrection) then ("--read_correction " +  '"' + readReadCorrection + '"') else ""} \
      ~{true="--contigs_binning" false="" contigsContigsBinning} \
      ~{if defined(minMinScaffoldLength) then ("--min_scaffold_length " +  '"' + minMinScaffoldLength + '"') else ""} \
      ~{true="--perform_taxonomic_assignment" false="" performPerformTaxonomicAssignment} \
      ~{true="--training_model" false="" trainingTrainingModel} \
      ~{if defined(rdpRdpCutOff) then ("--rdp_cutoff " +  '"' + rdpRdpCutOff + '"') else ""} \
      ~{true="--keep_tmp" false="" keepKeepTmp} \
      ~{true="--debug" false="" debugDebug} \
      ~{if defined(resumeResumeFrom) then ("--resume_from " +  '"' + resumeResumeFrom + '"') else ""} \
      ~{true="--filter_only" false="" filterFilterOnly}
  >>>
}