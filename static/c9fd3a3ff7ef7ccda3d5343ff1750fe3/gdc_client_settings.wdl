version 1.0

task GdcClientSettings {
  input {
    File? config
  }
  command <<<
    gdc-client settings \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""}
  >>>
  parameter_meta {
    config: "Path to INI-type config file. See what settings will look like if a custom config file is used"
  }
}