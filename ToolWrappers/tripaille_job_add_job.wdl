version 1.0

task TripailleJobAddJob {
  input {
    Int? priority
    String name
    String module
    String callback
    String arguments
  }
  command <<<
    tripaille job add_job \
      ~{name} \
      ~{module} \
      ~{callback} \
      ~{arguments} \
      ~{if defined(priority) then ("--priority " +  '"' + priority + '"') else ""}
  >>>
  parameter_meta {
    priority: "An integer score to prioritize the job  [default: 10]"
    name: ""
    module: ""
    callback: ""
    arguments: ""
  }
  output {
    File out_stdout = stdout()
  }
}