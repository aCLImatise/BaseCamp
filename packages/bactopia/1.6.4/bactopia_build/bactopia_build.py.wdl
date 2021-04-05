version 1.0

task Bactopiabuildpy {
  input {
    String? ext
    String? env_name
    Boolean? default
    Boolean? force
    Boolean? is_bac_topia
    Boolean? include_tools
    Boolean? verbose
    Boolean? silent
    String location_dot
  }
  command <<<
    bactopia_build_py \
      ~{location_dot} \
      ~{if defined(ext) then ("--ext " +  '"' + ext + '"') else ""} \
      ~{if defined(env_name) then ("--envname " +  '"' + env_name + '"') else ""} \
      ~{if (default) then "--default" else ""} \
      ~{if (force) then "--force" else ""} \
      ~{if (is_bac_topia) then "--is_bactopia" else ""} \
      ~{if (include_tools) then "--include_tools" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (silent) then "--silent" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/bactopia:1.6.4--0"
  }
  parameter_meta {
    ext: "Extension of the Conda environment files. Default: .yml"
    env_name: "Build Conda environment with the given name"
    default: "Builds Conda environments to the default Bactopia"
    force: "Force overwrite of existing Conda environments."
    is_bac_topia: "This is an automated call by bactopia not a user"
    include_tools: "Builds Conda environments for Bactopia tools as well."
    verbose: "Print debug related text."
    silent: "Only critical errors will be printed."
    location_dot: "--max_retry INT    Maximum times to attempt creating Conda environment."
  }
  output {
    File out_stdout = stdout()
  }
}