version 1.0

task Collectl {
  input {
    Boolean countCount
    Boolean filenameFilename
    Boolean intervalInterval
    Boolean optionsOptions
    Boolean playbackPlayback
    Boolean plotPlot
    Boolean subsysSubsys
    Boolean verboseVerbose
    Boolean showShowDefs
    Boolean helpHelpExtend
    Boolean helpHelpAll
    Boolean showShowOptions
    Boolean showShowSubsys
    Boolean showShowSubOpts
    Boolean showShowTopOpts
    Boolean showShowHeader
    Boolean showShowColHeaders
    Boolean showsShowsLabAliases
    Boolean showShowRootsLabs
  }
  command <<<
    collectl \
      ~{true="--count" false="" countCount} \
      ~{true="--filename" false="" filenameFilename} \
      ~{true="--interval" false="" intervalInterval} \
      ~{true="--options" false="" optionsOptions} \
      ~{true="--playback" false="" playbackPlayback} \
      ~{true="--plot" false="" plotPlot} \
      ~{true="--subsys" false="" subsysSubsys} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--showdefs" false="" showShowDefs} \
      ~{true="--helpextend" false="" helpHelpExtend} \
      ~{true="--helpall" false="" helpHelpAll} \
      ~{true="--showoptions" false="" showShowOptions} \
      ~{true="--showsubsys" false="" showShowSubsys} \
      ~{true="--showsubopts" false="" showShowSubOpts} \
      ~{true="--showtopopts" false="" showShowTopOpts} \
      ~{true="--showheader" false="" showShowHeader} \
      ~{true="--showcolheaders" false="" showShowColHeaders} \
      ~{true="--showslabaliases" false="" showsShowsLabAliases} \
      ~{true="--showrootslabs" false="" showShowRootsLabs}
  >>>
}