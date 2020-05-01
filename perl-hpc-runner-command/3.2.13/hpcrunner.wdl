version 1.0

task Hpcrunner.pl {
  input {
    Boolean pluginsPlugins
    Boolean pluginsPluginsOpts
    Boolean noNoConfigs
    Boolean configConfig
    Boolean searchSearch
    Boolean searchSearchPath
    Boolean configConfigBase
    Boolean projectProject
    Boolean noNoLogJson
  }
  command <<<
    hpcrunner.pl \
      ~{true="--plugins" false="" pluginsPlugins} \
      ~{true="--plugins_opts" false="" pluginsPluginsOpts} \
      ~{true="--no_configs" false="" noNoConfigs} \
      ~{true="--config" false="" configConfig} \
      ~{true="--search" false="" searchSearch} \
      ~{true="--search_path" false="" searchSearchPath} \
      ~{true="--config_base" false="" configConfigBase} \
      ~{true="--project" false="" projectProject} \
      ~{true="--no_log_json" false="" noNoLogJson}
  >>>
}