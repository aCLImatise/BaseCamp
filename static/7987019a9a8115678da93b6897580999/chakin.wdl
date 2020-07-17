version 1.0

task Chakin {
  input {
    Boolean? verbose
    String? instance
    String? path
  }
  command <<<
    chakin \
      ~{true="--verbose" false="" verbose} \
      ~{if defined(instance) then ("--instance " +  '"' + instance + '"') else ""} \
      ~{if defined(path) then ("--path " +  '"' + path + '"') else ""}
  >>>
  parameter_meta {
    verbose: "Enables verbose mode."
    instance: "Name of instance in /home/ubuntu/.chakin.yml. This parameter can also be set via the environment variable CHADO_INSTANCE  [default: __default; required]"
    path: "config file path"
  }
}