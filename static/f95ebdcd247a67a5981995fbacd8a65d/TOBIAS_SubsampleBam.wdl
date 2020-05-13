version 1.0

task TOBIASSubsampleBam {
  input {
    Boolean bamBam
    Boolean noNoRand
    Boolean startStart
    Boolean endEnd
    Boolean stepStep
    Boolean coresCores
    Boolean outdirOutdir
    Boolean prefixPrefix
    Boolean forceForce
    Int verbosityVerbosity
  }
  command <<<
    TOBIAS SubsampleBam \
      ~{true="--bam" false="" bamBam} \
      ~{true="--no_rand" false="" noNoRand} \
      ~{true="--start" false="" startStart} \
      ~{true="--end" false="" endEnd} \
      ~{true="--step" false="" stepStep} \
      ~{true="--cores" false="" coresCores} \
      ~{true="--outdir" false="" outdirOutdir} \
      ~{true="--prefix" false="" prefixPrefix} \
      ~{true="--force" false="" forceForce} \
      ~{if defined(verbosityVerbosity) then ("--verbosity " +  '"' + verbosityVerbosity + '"') else ""}
  >>>
}