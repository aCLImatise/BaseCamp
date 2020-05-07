version 1.0

task TraceDump {
  input {
    String? tracefileTracefile
  }
  command <<<
    trace_dump \
      ~{tracefileTracefile}
  >>>
}