version 1.0

task FunannotateUtilPredict {
  input {
    Boolean inputInput
    Boolean outOut
    Boolean speciesSpecies
    Boolean parametersParameters
    Boolean isolateIsolate
    Boolean strainStrain
    Boolean nameName
    Boolean numberingNumbering
    Boolean makerMakerGff
    Boolean pasaPasaGff
    Boolean otherOtherGff
    Boolean rnaRnaBam
    Boolean stringStringTie
    Boolean weightsWeights
    Boolean augustusAugustusSpecies
    Boolean minMinTrainingModels
    Boolean genemarkGenemarkMode
    Boolean genemarkGenemarkMod
    Boolean buscoBuscoSeedSpecies
    Boolean optimizeOptimizeAugustus
    Boolean buscoBuscoDb
    Boolean organismOrganism
    Boolean ploidyPloidy
    Boolean tbl2asnTbl2asn
    Boolean databaseDatabase
    Boolean proteinProteinEvidence
    Boolean proteinProteinAlignments
    Boolean transcriptTranscriptEvidence
    Boolean transcriptTranscriptAlignments
    Boolean augustusAugustusGff
    Boolean genemarkGenemarkGtf
    Boolean minMinIntronLen
    Boolean maxMaxIntronLen
    Boolean softSoftMask
    Boolean minMinProtLen
    Boolean repeatsRepeats2evm
    Boolean repeatRepeatFilter
    Boolean keepKeepNoStops
    Boolean keepKeepEvm
    Boolean seqSeqCenter
    Boolean seqSeqAccession
    Boolean forceForce
    Boolean cpusCpus
    String? predictPredict
    String? argumentsArguments
  }
  command <<<
    funannotate util predict \
      ~{predictPredict} \
      ~{true="--input" false="" inputInput} \
      ~{true="--out" false="" outOut} \
      ~{true="--species" false="" speciesSpecies} \
      ~{true="--parameters" false="" parametersParameters} \
      ~{true="--isolate" false="" isolateIsolate} \
      ~{true="--strain" false="" strainStrain} \
      ~{true="--name" false="" nameName} \
      ~{true="--numbering" false="" numberingNumbering} \
      ~{true="--maker_gff" false="" makerMakerGff} \
      ~{true="--pasa_gff" false="" pasaPasaGff} \
      ~{true="--other_gff" false="" otherOtherGff} \
      ~{true="--rna_bam" false="" rnaRnaBam} \
      ~{true="--stringtie" false="" stringStringTie} \
      ~{true="--weights" false="" weightsWeights} \
      ~{true="--augustus_species" false="" augustusAugustusSpecies} \
      ~{true="--min_training_models" false="" minMinTrainingModels} \
      ~{true="--genemark_mode" false="" genemarkGenemarkMode} \
      ~{true="--genemark_mod" false="" genemarkGenemarkMod} \
      ~{true="--busco_seed_species" false="" buscoBuscoSeedSpecies} \
      ~{true="--optimize_augustus" false="" optimizeOptimizeAugustus} \
      ~{true="--busco_db" false="" buscoBuscoDb} \
      ~{true="--organism" false="" organismOrganism} \
      ~{true="--ploidy" false="" ploidyPloidy} \
      ~{true="--tbl2asn" false="" tbl2asnTbl2asn} \
      ~{true="--database" false="" databaseDatabase} \
      ~{true="--protein_evidence" false="" proteinProteinEvidence} \
      ~{true="--protein_alignments" false="" proteinProteinAlignments} \
      ~{true="--transcript_evidence" false="" transcriptTranscriptEvidence} \
      ~{true="--transcript_alignments" false="" transcriptTranscriptAlignments} \
      ~{true="--augustus_gff" false="" augustusAugustusGff} \
      ~{true="--genemark_gtf" false="" genemarkGenemarkGtf} \
      ~{true="--min_intronlen" false="" minMinIntronLen} \
      ~{true="--max_intronlen" false="" maxMaxIntronLen} \
      ~{true="--soft_mask" false="" softSoftMask} \
      ~{true="--min_protlen" false="" minMinProtLen} \
      ~{true="--repeats2evm" false="" repeatsRepeats2evm} \
      ~{true="--repeat_filter" false="" repeatRepeatFilter} \
      ~{true="--keep_no_stops" false="" keepKeepNoStops} \
      ~{true="--keep_evm" false="" keepKeepEvm} \
      ~{true="--SeqCenter" false="" seqSeqCenter} \
      ~{true="--SeqAccession" false="" seqSeqAccession} \
      ~{true="--force" false="" forceForce} \
      ~{true="--cpus" false="" cpusCpus} \
      ~{argumentsArguments}
  >>>
}