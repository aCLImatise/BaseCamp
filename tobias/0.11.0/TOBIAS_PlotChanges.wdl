version 1.0

task TOBIASPlotChanges {
  input {
    Boolean binBinDetect
    Boolean tfsTfs
    Boolean outputOutput
    Boolean conditionsConditions
    Int verbosityVerbosity
  }
  command <<<
    TOBIAS PlotChanges \
      ~{true="--bindetect" false="" binBinDetect} \
      ~{true="--TFS" false="" tfsTfs} \
      ~{true="--output" false="" outputOutput} \
      ~{true="--conditions" false="" conditionsConditions} \
      ~{if defined(verbosityVerbosity) then ("--verbosity " +  '"' + verbosityVerbosity + '"') else ""}
  >>>
}