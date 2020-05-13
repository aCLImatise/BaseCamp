version 1.0

task Biox {
  input {
    Boolean pluginsPlugins
    Boolean pluginsPluginsOpts
    Boolean noNoConfigs
    Boolean searchSearchPath
    Boolean configConfig
    Boolean searchSearch
    Boolean configConfigBase
  }
  command <<<
    biox \
      ~{true="--plugins" false="" pluginsPlugins} \
      ~{true="--plugins_opts" false="" pluginsPluginsOpts} \
      ~{true="--no_configs" false="" noNoConfigs} \
      ~{true="--search_path" false="" searchSearchPath} \
      ~{true="--config" false="" configConfig} \
      ~{true="--search" false="" searchSearch} \
      ~{true="--config_base" false="" configConfigBase}
  >>>
}