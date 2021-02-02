version 1.0

task Arrow {
  input {
    Boolean? verbose
    String? apollo_instance
    Boolean? log_level
  }
  command <<<
    arrow \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(apollo_instance) then ("--apollo_instance " +  '"' + apollo_instance + '"') else ""} \
      ~{if (log_level) then "--log-level" else ""}
  >>>
  parameter_meta {
    verbose: "Enables verbose mode."
    apollo_instance: "name of apollo instance from /root/.apollo-"
    log_level: "[debug|info|warn|error|critical]\\nLogging level  [default: warn]"
  }
  output {
    File out_stdout = stdout()
  }
}