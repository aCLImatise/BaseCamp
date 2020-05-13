version 1.0

task TOBIASBINDetect {
  input {
    Boolean signalsSignals
    String peaksPeaks
    Boolean motifsMotifs
    String genomeGenome
    Boolean condCondNames
    File peakPeakHeader
    String namingNaming
    Float motifMotifPValue
    Float boundBoundPValue
    Float pseudoPseudo
    Boolean timeTimeSeries
    Boolean skipSkipExcel
    String prefixPrefix
    Directory outdirOutdir
    Int coresCores
    Int splitSplit
    Int verbosityVerbosity
  }
  command <<<
    TOBIAS BINDetect \
      ~{true="--signals" false="" signalsSignals} \
      ~{if defined(peaksPeaks) then ("--peaks " +  '"' + peaksPeaks + '"') else ""} \
      ~{true="--motifs" false="" motifsMotifs} \
      ~{if defined(genomeGenome) then ("--genome " +  '"' + genomeGenome + '"') else ""} \
      ~{true="--cond-names" false="" condCondNames} \
      ~{if defined(peakPeakHeader) then ("--peak-header " +  '"' + peakPeakHeader + '"') else ""} \
      ~{if defined(namingNaming) then ("--naming " +  '"' + namingNaming + '"') else ""} \
      ~{if defined(motifMotifPValue) then ("--motif-pvalue " +  '"' + motifMotifPValue + '"') else ""} \
      ~{if defined(boundBoundPValue) then ("--bound-pvalue " +  '"' + boundBoundPValue + '"') else ""} \
      ~{if defined(pseudoPseudo) then ("--pseudo " +  '"' + pseudoPseudo + '"') else ""} \
      ~{true="--time-series" false="" timeTimeSeries} \
      ~{true="--skip-excel" false="" skipSkipExcel} \
      ~{if defined(prefixPrefix) then ("--prefix " +  '"' + prefixPrefix + '"') else ""} \
      ~{if defined(outdirOutdir) then ("--outdir " +  '"' + outdirOutdir + '"') else ""} \
      ~{if defined(coresCores) then ("--cores " +  '"' + coresCores + '"') else ""} \
      ~{if defined(splitSplit) then ("--split " +  '"' + splitSplit + '"') else ""} \
      ~{if defined(verbosityVerbosity) then ("--verbosity " +  '"' + verbosityVerbosity + '"') else ""}
  >>>
}