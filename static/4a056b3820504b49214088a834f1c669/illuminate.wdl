version 1.0

task Illuminate {
  input {
    Boolean verboseVerbose
    Boolean quietQuiet
    Boolean debugDebug
    Boolean interactiveInteractive
    String nameName
    Boolean allAll
    Boolean metaMeta
    Boolean tileTile
    Boolean qualityQuality
    Boolean indexIndex
    Boolean errorError
    Boolean corCorInt
    Boolean extractionExtraction
    Boolean controlControl
    Boolean csvCsv
    Boolean jsonJson
    String outOutPath
    Boolean timestampTimestamp
  }
  command <<<
    illuminate \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{true="--debug" false="" debugDebug} \
      ~{true="--interactive" false="" interactiveInteractive} \
      ~{if defined(nameName) then ("--name " +  '"' + nameName + '"') else ""} \
      ~{true="--all" false="" allAll} \
      ~{true="--meta" false="" metaMeta} \
      ~{true="--tile" false="" tileTile} \
      ~{true="--quality" false="" qualityQuality} \
      ~{true="--index" false="" indexIndex} \
      ~{true="--error" false="" errorError} \
      ~{true="--corint" false="" corCorInt} \
      ~{true="--extraction" false="" extractionExtraction} \
      ~{true="--control" false="" controlControl} \
      ~{true="--csv" false="" csvCsv} \
      ~{true="--json" false="" jsonJson} \
      ~{if defined(outOutPath) then ("--outpath " +  '"' + outOutPath + '"') else ""} \
      ~{true="--timestamp" false="" timestampTimestamp}
  >>>
}