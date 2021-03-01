version 1.0

task NCBImetapy {
  input {
    File? config
    Directory? flat
    File? email
    File? api
    File? force_pause_seconds
  }
  command <<<
    NCBImeta_py \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""} \
      ~{if (flat) then "--flat" else ""} \
      ~{if defined(email) then ("--email " +  '"' + email + '"') else ""} \
      ~{if defined(api) then ("--api " +  '"' + api + '"') else ""} \
      ~{if defined(force_pause_seconds) then ("--force-pause-seconds " +  '"' + force_pause_seconds + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/ncbimeta:0.7.0--py_0"
  }
  parameter_meta {
    config: "Path to the yaml configuration file (ex. config.yaml)."
    flat: "Don't create sub-directories in output directory."
    email: "User email to override parameter in config file."
    api: "User API key to override parameter in config file."
    force_pause_seconds: "FORCE PAUSE SECONDS to override parameter in config\\nfile.\\n"
  }
  output {
    File out_stdout = stdout()
    Directory out_flat = "${in_flat}"
  }
}