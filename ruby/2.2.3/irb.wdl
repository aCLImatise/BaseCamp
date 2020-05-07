version 1.0

task Irb {
  input {
    Boolean infInfRubyMode
    Boolean sampleSampleBookMode
    Boolean noNoPrompt
    Boolean singleSingleIrb
    Boolean tracerTracer
    String backBackTraceLimit
    String irbIrbDebug
    Boolean verboseVerbose
    Boolean noNoVerbose
    String separateSeparate
  }
  command <<<
    irb \
      ~{true="--inf-ruby-mode" false="" infInfRubyMode} \
      ~{true="--sample-book-mode" false="" sampleSampleBookMode} \
      ~{true="--noprompt" false="" noNoPrompt} \
      ~{true="--single-irb" false="" singleSingleIrb} \
      ~{true="--tracer" false="" tracerTracer} \
      ~{if defined(backBackTraceLimit) then ("--back-trace-limit " +  '"' + backBackTraceLimit + '"') else ""} \
      ~{if defined(irbIrbDebug) then ("--irb_debug " +  '"' + irbIrbDebug + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--noverbose" false="" noNoVerbose} \
      ~{if defined(separateSeparate) then ("--                Separate " +  '"' + separateSeparate + '"') else ""}
  >>>
}