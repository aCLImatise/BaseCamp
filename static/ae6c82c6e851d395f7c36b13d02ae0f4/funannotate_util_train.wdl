version 1.0

task FunannotateUtilTrain {
  input {
    Boolean inputInput
    Boolean outOut
    Boolean leftLeft
    Boolean rightRight
    Boolean singleSingle
    Boolean strandedStranded
    Boolean leftLeftNorm
    Boolean rightRightNorm
    Boolean singleSingleNorm
    Boolean pacPacBioIsoSeq
    Boolean nanoNanoPoreCdna
    Boolean nanoNanoPoreMrna
    Boolean trinityTrinity
    Boolean jaccardJaccardClip
    Boolean noNoNormalizeReads
    Boolean noNoTrimMoMatic
    Boolean memoryMemory
    Boolean coverageCoverage
    Boolean minMinCoverage
    Boolean pasaPasaDb
    String stringentStringentAlignmentOverlap
    Boolean alignersAligners
    Boolean maxMaxIntronLen
    Boolean speciesSpecies
    Boolean strainStrain
    Boolean isolateIsolate
    Boolean cpusCpus
    String? trainTrain
    String? argumentsArguments
  }
  command <<<
    funannotate util train \
      ~{trainTrain} \
      ~{true="--input" false="" inputInput} \
      ~{true="--out" false="" outOut} \
      ~{true="--left" false="" leftLeft} \
      ~{true="--right" false="" rightRight} \
      ~{true="--single" false="" singleSingle} \
      ~{true="--stranded" false="" strandedStranded} \
      ~{true="--left_norm" false="" leftLeftNorm} \
      ~{true="--right_norm" false="" rightRightNorm} \
      ~{true="--single_norm" false="" singleSingleNorm} \
      ~{true="--pacbio_isoseq" false="" pacPacBioIsoSeq} \
      ~{true="--nanopore_cdna" false="" nanoNanoPoreCdna} \
      ~{true="--nanopore_mrna" false="" nanoNanoPoreMrna} \
      ~{true="--trinity" false="" trinityTrinity} \
      ~{true="--jaccard_clip" false="" jaccardJaccardClip} \
      ~{true="--no_normalize_reads" false="" noNoNormalizeReads} \
      ~{true="--no_trimmomatic" false="" noNoTrimMoMatic} \
      ~{true="--memory" false="" memoryMemory} \
      ~{true="--coverage" false="" coverageCoverage} \
      ~{true="--min_coverage" false="" minMinCoverage} \
      ~{true="--pasa_db" false="" pasaPasaDb} \
      ~{if defined(stringentStringentAlignmentOverlap) then ("--stringent_alignment_overlap " +  '"' + stringentStringentAlignmentOverlap + '"') else ""} \
      ~{true="--aligners" false="" alignersAligners} \
      ~{true="--max_intronlen" false="" maxMaxIntronLen} \
      ~{true="--species" false="" speciesSpecies} \
      ~{true="--strain" false="" strainStrain} \
      ~{true="--isolate" false="" isolateIsolate} \
      ~{true="--cpus" false="" cpusCpus} \
      ~{argumentsArguments}
  >>>
}