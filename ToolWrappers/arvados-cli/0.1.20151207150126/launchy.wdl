version 1.0

task Launchy {
  input {
    String? application
    Boolean? debug
    String? engine
    Boolean? dry_run
    String? host_os
    String thing_to_launch
  }
  command <<<
    launchy \
      ~{thing_to_launch} \
      ~{if defined(application) then ("--application " +  '"' + application + '"') else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if defined(engine) then ("--engine " +  '"' + engine + '"') else ""} \
      ~{if (dry_run) then "--dry-run" else ""} \
      ~{if defined(host_os) then ("--host-os " +  '"' + host_os + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    application: "Explicitly specify the application class to use in the launch"
    debug: "Force debug. Output lots of information."
    engine: "Force launchy to behave as if it was on a particular ruby engine."
    dry_run: "Don't launchy, print the command to be executed on stdout"
    host_os: "Force launchy to behave as if it was on a particular host os."
    thing_to_launch: ""
  }
  output {
    File out_stdout = stdout()
  }
}