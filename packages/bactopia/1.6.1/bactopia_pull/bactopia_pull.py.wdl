version 1.0

task Bactopiapullpy {
  input {
    String? env_name
    Directory? singularity_cache
    String? registry
    Int? max_retry
    Boolean? include_tools
    Boolean? force
    Boolean? verbose
    Boolean? silent
    String built_dot
    String location_dot
  }
  command <<<
    bactopia_pull_py \
      ~{built_dot} \
      ~{location_dot} \
      ~{if defined(env_name) then ("--envname " +  '"' + env_name + '"') else ""} \
      ~{if defined(singularity_cache) then ("--singularity_cache " +  '"' + singularity_cache + '"') else ""} \
      ~{if defined(registry) then ("--registry " +  '"' + registry + '"') else ""} \
      ~{if defined(max_retry) then ("--max_retry " +  '"' + max_retry + '"') else ""} \
      ~{if (include_tools) then "--include_tools" else ""} \
      ~{if (force) then "--force" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (silent) then "--silent" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/bactopia:1.6.1--0"
  }
  parameter_meta {
    env_name: "Build Singularity images with the given name"
    singularity_cache: "Directory where Singularity images will be stored."
    registry: "Docker registry to pull containers from"
    max_retry: "Maximum times to attempt creating Conda environment.\\n(Default: 5)"
    include_tools: "Singularity images for Bactopia Tools will also be"
    force: "Force overwrite of existing Conda environments."
    verbose: "Print debug related text."
    silent: "Only critical errors will be printed."
    built_dot: "--default             Builds Singularity images to the default Bactopia"
    location_dot: "--is_bactopia         This is an automated call by bactopia not a user"
  }
  output {
    File out_stdout = stdout()
  }
}