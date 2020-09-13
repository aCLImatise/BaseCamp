version 1.0

task Biox {
  input {
    Boolean? plugins_opts
    Boolean? plugins
    Boolean? config_base
    Boolean? search_path
    Boolean? config
    Boolean? no_configs
  }
  command <<<
    biox \
      ~{if (plugins_opts) then "--plugins_opts" else ""} \
      ~{if (plugins) then "--plugins" else ""} \
      ~{if (config_base) then "--config_base" else ""} \
      ~{if (search_path) then "--search_path" else ""} \
      ~{if (config) then "--config" else ""} \
      ~{if (no_configs) then "--no_configs" else ""}
  >>>
  parameter_meta {
    plugins_opts: "Options for application plugins [Key-Value]"
    plugins: "Load aplication plugins [Multiple; Split by \\\",\\\"]"
    config_base: "Basename of config files [Default:\\\".bioxworkflow\\\"]"
    search_path: "Enable a search path for configs. Default is the\\nhome dir and your cwd. [Multiple]"
    config: "Override the search paths and supply your own"
    no_configs: "--no_configs tells HPC::Runner not to load any\\nconfigs [Flag]"
  }
  output {
    File out_stdout = stdout()
  }
}