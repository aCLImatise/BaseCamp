version 1.0

task Biox {
  input {
    Boolean? plugins
    Boolean? plugins_opts
    Boolean? config_base
    Boolean? search_path
    Boolean? search
    Boolean? config
    Boolean? no_configs
    String? w
  }
  command <<<
    biox \
      ~{true="--plugins" false="" plugins} \
      ~{true="--plugins_opts" false="" plugins_opts} \
      ~{true="--config_base" false="" config_base} \
      ~{true="--search_path" false="" search_path} \
      ~{true="--search" false="" search} \
      ~{true="--config" false="" config} \
      ~{true="--no_configs" false="" no_configs} \
      ~{if defined(w) then ("-w " +  '"' + w + '"') else ""}
  >>>
  parameter_meta {
    plugins: "Load aplication plugins [Multiple; Split by \",\"]"
    plugins_opts: "Options for application plugins [Key-Value]"
    config_base: "Basename of config files [Default:\".bioxworkflow\"]"
    search_path: "Enable a search path for configs. Default is the home dir and your cwd. [Multiple]"
    search: "Search for config files in ~/.config.(ext) and in your current working directory. [Flag]"
    config: "Override the search paths and supply your own config."
    no_configs: "--no_configs tells HPC::Runner not to load any configs [Flag]"
    w: ""
  }
}