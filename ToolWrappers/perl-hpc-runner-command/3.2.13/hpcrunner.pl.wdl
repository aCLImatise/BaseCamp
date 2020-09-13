version 1.0

task Hpcrunnerpl {
  input {
    Boolean? plugins_opts
    Boolean? plugins
    Boolean? config_base
    Boolean? search
    Boolean? config
    Boolean? no_configs
    Boolean? project
    Boolean? no_log_json
  }
  command <<<
    hpcrunner_pl \
      ~{if (plugins_opts) then "--plugins_opts" else ""} \
      ~{if (plugins) then "--plugins" else ""} \
      ~{if (config_base) then "--config_base" else ""} \
      ~{if (search) then "--search" else ""} \
      ~{if (config) then "--config" else ""} \
      ~{if (no_configs) then "--no_configs" else ""} \
      ~{if (project) then "--project" else ""} \
      ~{if (no_log_json) then "--no_log_json" else ""}
  >>>
  parameter_meta {
    plugins_opts: "Options for application plugins [Key-Value]"
    plugins: "Load aplication plugins [Multiple; Split by \\\",\\\"]"
    config_base: "Basename of config files [Default:\\\".hpcrunner\\\"]"
    search: "Search for config files in ~/.config.(ext) and in\\nyour current working directory. [Flag]"
    config: "Override the search paths and supply your own"
    no_configs: "--no_configs tells HPC::Runner not to load any\\nconfigs [Flag]"
    project: "Give your jobnames an additional project name. #HPC\\njobname=gzip will be submitted as 001_project_gzip"
    no_log_json: "Opt out of writing the tar archive of JSON stats.\\nThis may be desirable for especially large\\nworkflows. [Flag]"
  }
  output {
    File out_stdout = stdout()
  }
}