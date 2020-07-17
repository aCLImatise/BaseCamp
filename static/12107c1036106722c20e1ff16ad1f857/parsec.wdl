version 1.0

task Parsec {
  input {
    Boolean? verbose
    String? galaxy_instance
    String? path
  }
  command <<<
    parsec \
      ~{true="--verbose" false="" verbose} \
      ~{if defined(galaxy_instance) then ("--galaxy_instance " +  '"' + galaxy_instance + '"') else ""} \
      ~{if defined(path) then ("--path " +  '"' + path + '"') else ""}
  >>>
  parameter_meta {
    verbose: "Enables verbose mode."
    galaxy_instance: "Name of instance in /home/ubuntu/.parsec.yml. This parameter can also be set via the environment variable PARSEC_GALAXY_INSTANCE [default: __default; required]"
    path: "config file path"
  }
}