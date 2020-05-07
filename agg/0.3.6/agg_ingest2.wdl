version 1.0

task AggIngest2 {
  input {
    String outputOutput
    Int threadThread
    Boolean listList
  }
  command <<<
    agg ingest2 \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(threadThread) then ("--thread " +  '"' + threadThread + '"') else ""} \
      ~{true="--list" false="" listList}
  >>>
}