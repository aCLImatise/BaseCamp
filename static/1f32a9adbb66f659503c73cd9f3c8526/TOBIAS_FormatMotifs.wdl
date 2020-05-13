version 1.0

task TOBIASFormatMotifs {
  input {
    Boolean inputInput
    Boolean outputOutput
    Boolean formatFormat
    Boolean taskTask
    Boolean filterFilter
    Int verbosityVerbosity
  }
  command <<<
    TOBIAS FormatMotifs \
      ~{true="--input" false="" inputInput} \
      ~{true="--output" false="" outputOutput} \
      ~{true="--format" false="" formatFormat} \
      ~{true="--task" false="" taskTask} \
      ~{true="--filter" false="" filterFilter} \
      ~{if defined(verbosityVerbosity) then ("--verbosity " +  '"' + verbosityVerbosity + '"') else ""}
  >>>
}