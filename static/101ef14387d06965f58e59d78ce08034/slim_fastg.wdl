version 1.0

task SlimFastg.py {
  input {
    String fF
    String eE
    String noNoHits
    String significantSignificant
    Boolean removeRemoveLowDup
    String depthDepthCutOff
    Int minMinDepth
    Int maxMaxDepth
    Boolean mergeMerge
    String includeInclude
    String includeIncludePriority
    String excludeExclude
    String excludeExcludePriority
    Boolean noNoHitsLabeledTab
    Boolean keepKeepTemp
    String outOutDir
    String prefixPrefix
    String outOutBase
    Boolean logLog
    Boolean verboseVerbose
    Boolean continueContinue
    Boolean noNoOverwrite
    String whichWhichBlast
    String threadsThreads
    String? pythonPython
    String? slimSlimFastGpY
    String? yourYourFastGFiles
  }
  command <<<
    slim_fastg.py \
      ~{pythonPython} \
      ~{if defined(fF) then ("-F " +  '"' + fF + '"') else ""} \
      ~{if defined(eE) then ("-E " +  '"' + eE + '"') else ""} \
      ~{if defined(noNoHits) then ("--no-hits " +  '"' + noNoHits + '"') else ""} \
      ~{if defined(significantSignificant) then ("--significant " +  '"' + significantSignificant + '"') else ""} \
      ~{true="--remove-low-dup" false="" removeRemoveLowDup} \
      ~{if defined(depthDepthCutOff) then ("--depth-cutoff " +  '"' + depthDepthCutOff + '"') else ""} \
      ~{if defined(minMinDepth) then ("--min-depth " +  '"' + minMinDepth + '"') else ""} \
      ~{if defined(maxMaxDepth) then ("--max-depth " +  '"' + maxMaxDepth + '"') else ""} \
      ~{true="--merge" false="" mergeMerge} \
      ~{if defined(includeInclude) then ("--include " +  '"' + includeInclude + '"') else ""} \
      ~{if defined(includeIncludePriority) then ("--include-priority " +  '"' + includeIncludePriority + '"') else ""} \
      ~{if defined(excludeExclude) then ("--exclude " +  '"' + excludeExclude + '"') else ""} \
      ~{if defined(excludeExcludePriority) then ("--exclude-priority " +  '"' + excludeExcludePriority + '"') else ""} \
      ~{true="--no-hits-labeled-tab" false="" noNoHitsLabeledTab} \
      ~{true="--keep-temp" false="" keepKeepTemp} \
      ~{if defined(outOutDir) then ("--out-dir " +  '"' + outOutDir + '"') else ""} \
      ~{if defined(prefixPrefix) then ("--prefix " +  '"' + prefixPrefix + '"') else ""} \
      ~{if defined(outOutBase) then ("--out-base " +  '"' + outOutBase + '"') else ""} \
      ~{true="--log" false="" logLog} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--continue" false="" continueContinue} \
      ~{true="--no-overwrite" false="" noNoOverwrite} \
      ~{if defined(whichWhichBlast) then ("--which-blast " +  '"' + whichWhichBlast + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{slimSlimFastGpY} \
      ~{yourYourFastGFiles}
  >>>
}