version 1.0

task Chakin {
  input {
    Boolean? verbose
    String? instance
    File? path
  }
  command <<<
    chakin \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(instance) then ("--instance " +  '"' + instance + '"') else ""} \
      ~{if defined(path) then ("--path " +  '"' + path + '"') else ""}
  >>>
  parameter_meta {
    verbose: "Enables verbose mode."
    instance: "Name of instance in /root/.chakin.yml. This parameter\\ncan also be set via the environment variable\\nCHADO_INSTANCE  [default: __default; required]"
    path: "config file path"
  }
  output {
    File out_stdout = stdout()
  }
}