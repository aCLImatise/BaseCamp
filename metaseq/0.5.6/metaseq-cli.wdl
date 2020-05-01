version 1.0

task MetaseqCli {
  input {
    Boolean processesProcesses
    Boolean fromFromString
    String binsBins
    String outputOutput
    Boolean plotPlot
    String processesProcesses
    String fragmentFragmentSize
    String? actionAction
    String? dataDataFile
    String? typeType
    String? windowsWindows
  }
  command <<<
    metaseq-cli \
      ~{actionAction} \
      ~{true="--processes" false="" processesProcesses} \
      ~{true="--fromstring" false="" fromFromString} \
      ~{if defined(binsBins) then ("--bins " +  '"' + binsBins + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{true="--plot" false="" plotPlot} \
      ~{if defined(processesProcesses) then ("--processes " +  '"' + processesProcesses + '"') else ""} \
      ~{if defined(fragmentFragmentSize) then ("--fragmentsize " +  '"' + fragmentFragmentSize + '"') else ""} \
      ~{dataDataFile} \
      ~{typeType} \
      ~{windowsWindows}
  >>>
}