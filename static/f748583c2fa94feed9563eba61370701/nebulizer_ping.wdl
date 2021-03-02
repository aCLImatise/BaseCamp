version 1.0

task NebulizerPing {
  input {
    String? count
    Int? interval
    String? timeout
    String galaxy
  }
  command <<<
    nebulizer ping \
      ~{galaxy} \
      ~{if defined(count) then ("--count " +  '"' + count + '"') else ""} \
      ~{if defined(interval) then ("--interval " +  '"' + interval + '"') else ""} \
      ~{if defined(timeout) then ("--timeout " +  '"' + timeout + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    count: "if set then stop after sending COUNT requests\\n(default is to send requests forever)."
    interval: "set the interval between sending requests in\\nseconds (default is 5 seconds)."
    timeout: "specify timeout limit in seconds when no connection\\ncan be made."
    galaxy: ""
  }
  output {
    File out_stdout = stdout()
  }
}