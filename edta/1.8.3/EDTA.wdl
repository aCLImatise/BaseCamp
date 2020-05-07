version 1.0

task EDTA.pl {
  input {
    Boolean genomeGenome
    Boolean speciesSpecies
    Boolean stepStep
    Boolean overwriteOverwrite
    Boolean cdsCds
    Boolean curatedCuratedLib
    Boolean sensitiveSensitive
    Boolean anAnNo
    Boolean rmRmOut
    Boolean evaluateEvaluate
    Boolean excludeExclude
    Boolean forceForce
    Boolean repeatRepeatModeler
    Boolean repeatmaskerRepeatmasker
    Boolean blastBlast
    String checkCheckDependencies
    Boolean trfTrf
    Boolean threadsThreads
  }
  command <<<
    EDTA.pl \
      ~{true="--genome" false="" genomeGenome} \
      ~{true="--species" false="" speciesSpecies} \
      ~{true="--step" false="" stepStep} \
      ~{true="--overwrite" false="" overwriteOverwrite} \
      ~{true="--cds" false="" cdsCds} \
      ~{true="--curatedlib" false="" curatedCuratedLib} \
      ~{true="--sensitive" false="" sensitiveSensitive} \
      ~{true="--anno" false="" anAnNo} \
      ~{true="--rmout" false="" rmRmOut} \
      ~{true="--evaluate" false="" evaluateEvaluate} \
      ~{true="--exclude" false="" excludeExclude} \
      ~{true="--force" false="" forceForce} \
      ~{true="--repeatmodeler" false="" repeatRepeatModeler} \
      ~{true="--repeatmasker" false="" repeatmaskerRepeatmasker} \
      ~{true="--blast" false="" blastBlast} \
      ~{if defined(checkCheckDependencies) then ("--check_dependencies " +  '"' + checkCheckDependencies + '"') else ""} \
      ~{true="--trf" false="" trfTrf} \
      ~{true="--threads" false="" threadsThreads}
  >>>
}