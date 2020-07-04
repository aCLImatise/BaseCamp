version 1.0

task HailctlDevConfig {
  input {
    String? location
    String? override
    String namespace
  }
  command <<<
    hailctl dev config \
      ~{namespace} \
      ~{if defined(location) then ("--location " +  '"' + location + '"') else ""} \
      ~{if defined(override) then ("--override " +  '"' + override + '"') else ""}
  >>>
  parameter_meta {
    location: "Location. (default: external)"
    override: "List of comma-separated service=namespace overrides. (default: none)"
    namespace: "Default namespace. Show the current configuration if not specified."
  }
}