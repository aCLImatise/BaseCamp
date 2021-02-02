version 1.0

task Bioxworkflowpl {
  input {
    Boolean? plugins
    Boolean? plugins_opts
    Boolean? search
    Boolean? config_base
    Boolean? search_path
    Boolean? no_configs
    Boolean? config
  }
  command <<<
    biox_workflow_pl \
      ~{if (plugins) then "--plugins" else ""} \
      ~{if (plugins_opts) then "--plugins_opts" else ""} \
      ~{if (search) then "--search" else ""} \
      ~{if (config_base) then "--config_base" else ""} \
      ~{if (search_path) then "--search_path" else ""} \
      ~{if (no_configs) then "--no_configs" else ""} \
      ~{if (config) then "--config" else ""}
  >>>
  parameter_meta {
    plugins: "Load aplication plugins [Multiple; Split by \\\",\\\"]"
    plugins_opts: "Options for application plugins [Key-Value]"
    search: "Search for config files in ~/.config.(ext) and in\\nyour current working directory. [Flag]"
    config_base: "Basename of config files [Default:\\\".bioxworkflow\\\"]"
    search_path: "Enable a search path for configs. Default is the\\nhome dir and your cwd. [Multiple]"
    no_configs: "--no_configs tells HPC::Runner not to load any\\nconfigs [Flag]"
    config: "Override the search paths and supply your own"
  }
  output {
    File out_stdout = stdout()
  }
}