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
  runtime {
    docker: "quay.io/biocontainers/hail:0.2.61--py36hf1ae8f4_1"
  }
  parameter_meta {
    location: "Location. (default: external)"
    override: "List of comma-separated service=namespace overrides.\\n(default: none)\\n"
    namespace: "Default namespace. Show the current configuration if\\nnot specified."
  }
  output {
    File out_stdout = stdout()
  }
}