version 1.0

task QueryConfig {
  input {
    Boolean debugDebug
    Boolean verboseVerbose
    Boolean silentSilent
    Boolean compCompSets
    Boolean componentsComponents
    Boolean gridsGrids
    Boolean machinesMachines
    Boolean longLong
  }
  command <<<
    query_config \
      ~{true="--debug" false="" debugDebug} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--silent" false="" silentSilent} \
      ~{true="--compsets" false="" compCompSets} \
      ~{true="--components" false="" componentsComponents} \
      ~{true="--grids" false="" gridsGrids} \
      ~{true="--machines" false="" machinesMachines} \
      ~{true="--long" false="" longLong}
  >>>
}