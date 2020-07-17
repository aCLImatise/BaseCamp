version 1.0

task Arrow {
  input {
    Boolean? verbose
    String? apollo_instance
    Boolean? log_level
  }
  command <<<
    arrow \
      ~{true="--verbose" false="" verbose} \
      ~{if defined(apollo_instance) then ("--apollo_instance " +  '"' + apollo_instance + '"') else ""} \
      ~{true="--log-level" false="" log_level}
  >>>
  parameter_meta {
    verbose: "Enables verbose mode."
    apollo_instance: "name of apollo instance from /home/ubuntu /.apollo-arrow.yml  [default: __default; required]"
    log_level: "[debug|info|warn|error|critical] Logging level  [default: warn]"
  }
}