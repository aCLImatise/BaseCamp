version 1.0

task TOBIASScoreBigwig {
  input {
    String signalSignal
    String outputOutput
    String regionsRegions
    String scoreScore
    Boolean absoluteAbsolute
    Int extendExtend
    Int smoothSmooth
    Float minMinLimit
    Float maxMaxLimit
    Int fpFpMin
    Int fpFpMax
    Int flankFlankMin
    Int flankFlankMax
    Int windowWindow
    Int coresCores
    Int splitSplit
    Int verbosityVerbosity
    String? scoreScoreBigwig
  }
  command <<<
    TOBIAS ScoreBigwig \
      ~{scoreScoreBigwig} \
      ~{if defined(signalSignal) then ("--signal " +  '"' + signalSignal + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(regionsRegions) then ("--regions " +  '"' + regionsRegions + '"') else ""} \
      ~{if defined(scoreScore) then ("--score " +  '"' + scoreScore + '"') else ""} \
      ~{true="--absolute" false="" absoluteAbsolute} \
      ~{if defined(extendExtend) then ("--extend " +  '"' + extendExtend + '"') else ""} \
      ~{if defined(smoothSmooth) then ("--smooth " +  '"' + smoothSmooth + '"') else ""} \
      ~{if defined(minMinLimit) then ("--min-limit " +  '"' + minMinLimit + '"') else ""} \
      ~{if defined(maxMaxLimit) then ("--max-limit " +  '"' + maxMaxLimit + '"') else ""} \
      ~{if defined(fpFpMin) then ("--fp-min " +  '"' + fpFpMin + '"') else ""} \
      ~{if defined(fpFpMax) then ("--fp-max " +  '"' + fpFpMax + '"') else ""} \
      ~{if defined(flankFlankMin) then ("--flank-min " +  '"' + flankFlankMin + '"') else ""} \
      ~{if defined(flankFlankMax) then ("--flank-max " +  '"' + flankFlankMax + '"') else ""} \
      ~{if defined(windowWindow) then ("--window " +  '"' + windowWindow + '"') else ""} \
      ~{if defined(coresCores) then ("--cores " +  '"' + coresCores + '"') else ""} \
      ~{if defined(splitSplit) then ("--split " +  '"' + splitSplit + '"') else ""} \
      ~{if defined(verbosityVerbosity) then ("--verbosity " +  '"' + verbosityVerbosity + '"') else ""}
  >>>
}