version 1.0

task Tripaille {
  input {
    Boolean? verbose
    String? instance
    File? path
  }
  command <<<
    tripaille \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(instance) then ("--instance " +  '"' + instance + '"') else ""} \
      ~{if defined(path) then ("--path " +  '"' + path + '"') else ""}
  >>>
  parameter_meta {
    verbose: "Enables verbose mode."
    instance: "Name of instance in /root/.tripaille.yml. This\\nparameter can also be set via the environment variable\\nTRIPAILLE_INSTANCE  [default: __default; required]"
    path: "config file path"
  }
  output {
    File out_stdout = stdout()
  }
}