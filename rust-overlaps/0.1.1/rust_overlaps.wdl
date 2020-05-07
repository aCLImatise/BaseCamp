version 1.0

task RustOverlaps {
  input {
    Boolean editEditDistance
    Boolean formatFormatLine
    Boolean greedyGreedyOutput
    Boolean inclusionsInclusions
    Boolean noNoN
    Boolean printPrint
    Boolean reversalsReversals
    Boolean trackTrackProgress
    Boolean verboseVerbose
    String modeMode
    String workerWorkerThreads
    String? flagsFlags
    String? optionsOptions
    String? inInPath
    String? outOutPath
    String? errErrRate
    String? threshThresh
  }
  command <<<
    rust-overlaps \
      ~{flagsFlags} \
      ~{true="--edit_distance" false="" editEditDistance} \
      ~{true="--format_line" false="" formatFormatLine} \
      ~{true="--greedy_output" false="" greedyGreedyOutput} \
      ~{true="--inclusions" false="" inclusionsInclusions} \
      ~{true="--no_n" false="" noNoN} \
      ~{true="--print" false="" printPrint} \
      ~{true="--reversals" false="" reversalsReversals} \
      ~{true="--track_progress" false="" trackTrackProgress} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{if defined(modeMode) then ("--mode " +  '"' + modeMode + '"') else ""} \
      ~{if defined(workerWorkerThreads) then ("--worker_threads " +  '"' + workerWorkerThreads + '"') else ""} \
      ~{optionsOptions} \
      ~{inInPath} \
      ~{outOutPath} \
      ~{errErrRate} \
      ~{threshThresh}
  >>>
}