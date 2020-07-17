version 1.0

task NCBImeta.py {
  input {
    String? config
    Boolean? flat
  }
  command <<<
    NCBImeta.py \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""} \
      ~{true="--flat" false="" flat}
  >>>
  parameter_meta {
    config: "Path to the yaml configuration file (ex. config.yaml)."
    flat: "Don't create sub-directories in output directory."
  }
}