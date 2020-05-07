version 1.0

task Chromosight {
  input {
    String dumpDump
    Boolean fullFull
    Boolean forceForceNorm
    Boolean interInter
    String iterationsIterations
    File kernelKernelConfig
    String minMinDist
    String maxMaxDist
    Boolean noNoPlotting
    Boolean nNMads
    String patternPattern
    String pearsonPearson
    Int subsampleSubsample
    String minMinSeparation
    Boolean threadsThreads
    Boolean smoothSmoothTrend
    String percPercUndetected
    String winWinFmt
    String winWinSize
    Boolean tTSvd
    String presetPreset
    String clickClick
    String? contactContactMap
    String? outputOutput
    String? prefixPrefix
    String? bed2dBed2d
    String? contactContactMap
    String? outputOutput
  }
  command <<<
    chromosight \
      ~{contactContactMap} \
      ~{prefixPrefix} \
      ~{bed2dBed2d} \
      ~{if defined(dumpDump) then ("--dump " +  '"' + dumpDump + '"') else ""} \
      ~{true="--full" false="" fullFull} \
      ~{true="--force-norm" false="" forceForceNorm} \
      ~{true="--inter" false="" interInter} \
      ~{if defined(iterationsIterations) then ("--iterations " +  '"' + iterationsIterations + '"') else ""} \
      ~{if defined(kernelKernelConfig) then ("--kernel-config " +  '"' + kernelKernelConfig + '"') else ""} \
      ~{if defined(minMinDist) then ("--min-dist " +  '"' + minMinDist + '"') else ""} \
      ~{if defined(maxMaxDist) then ("--max-dist " +  '"' + maxMaxDist + '"') else ""} \
      ~{true="--no-plotting" false="" noNoPlotting} \
      ~{true="--n-mads" false="" nNMads} \
      ~{if defined(patternPattern) then ("--pattern " +  '"' + patternPattern + '"') else ""} \
      ~{if defined(pearsonPearson) then ("--pearson " +  '"' + pearsonPearson + '"') else ""} \
      ~{if defined(subsampleSubsample) then ("--subsample " +  '"' + subsampleSubsample + '"') else ""} \
      ~{if defined(minMinSeparation) then ("--min-separation " +  '"' + minMinSeparation + '"') else ""} \
      ~{true="--threads" false="" threadsThreads} \
      ~{true="--smooth-trend" false="" smoothSmoothTrend} \
      ~{if defined(percPercUndetected) then ("--perc-undetected " +  '"' + percPercUndetected + '"') else ""} \
      ~{if defined(winWinFmt) then ("--win-fmt " +  '"' + winWinFmt + '"') else ""} \
      ~{if defined(winWinSize) then ("--win-size " +  '"' + winWinSize + '"') else ""} \
      ~{true="--tsvd" false="" tTSvd} \
      ~{if defined(presetPreset) then ("--preset " +  '"' + presetPreset + '"') else ""} \
      ~{if defined(clickClick) then ("--click " +  '"' + clickClick + '"') else ""} \
      ~{outputOutput} \
      ~{contactContactMap} \
      ~{outputOutput}
  >>>
}