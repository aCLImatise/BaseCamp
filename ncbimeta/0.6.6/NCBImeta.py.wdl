version 1.0

task NCBImetapy {
  input {
    File? config
    Directory? flat
  }
  command <<<
    NCBImeta_py \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""} \
      ~{if (flat) then "--flat" else ""}
  >>>
  parameter_meta {
    config: "Path to the yaml configuration file (ex. config.yaml)."
    flat: "Don't create sub-directories in output directory."
  }
  output {
    File out_stdout = stdout()
    Directory out_flat = "${in_flat}"
  }
}