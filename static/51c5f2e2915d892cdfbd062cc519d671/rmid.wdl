version 1.0

task Rmid {
  input {
    String? port
    Directory? log
    Boolean? stop
    Boolean? runtime_flag_each
    Boolean? runtime_flag_the
    String options
  }
  command <<<
    rmid \
      ~{options} \
      ~{if defined(port) then ("-port " +  '"' + port + '"') else ""} \
      ~{if defined(log) then ("-log " +  '"' + log + '"') else ""} \
      ~{if (stop) then "-stop" else ""} \
      ~{if (runtime_flag_each) then "-C" else ""} \
      ~{if (runtime_flag_the) then "-J" else ""}
  >>>
  parameter_meta {
    port: "Specify port for rmid to use"
    log: "Specify directory in which rmid writes log"
    stop: "Stop current invocation of rmid (for specified port)"
    runtime_flag_each: "<runtime flag>    Pass argument to each child process (activation group)"
    runtime_flag_the: "<runtime flag>    Pass argument to the java interpreter"
    options: ""
  }
  output {
    File out_stdout = stdout()
  }
}