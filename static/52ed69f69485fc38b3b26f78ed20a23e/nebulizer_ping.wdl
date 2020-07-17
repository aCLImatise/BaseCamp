version 1.0

task NebulizerPing {
  input {
    String? count
    Int? interval
    String galaxy
  }
  command <<<
    nebulizer ping \
      ~{galaxy} \
      ~{if defined(count) then ("--count " +  '"' + count + '"') else ""} \
      ~{if defined(interval) then ("--interval " +  '"' + interval + '"') else ""}
  >>>
  parameter_meta {
    count: "if set then stop after sending COUNT requests (default is to send requests forever)."
    interval: "set the interval between sending requests in seconds (default is 5 seconds)."
    galaxy: ""
  }
}