version 1.0

task BioxNew {
  input {
    Boolean? plugins_opts
    Boolean? plugins
    Boolean? config
    Boolean? search
    Boolean? no_configs
    Boolean? search_path
    Boolean? config_base
    Boolean? rules
    Boolean? outfile
    Boolean? stdout
    Boolean? supply_a_workflow
    String help
  }
  command <<<
    biox new \
      ~{help} \
      ~{true="--plugins_opts" false="" plugins_opts} \
      ~{true="--plugins" false="" plugins} \
      ~{true="--config" false="" config} \
      ~{true="--search" false="" search} \
      ~{true="--no_configs" false="" no_configs} \
      ~{true="--search_path" false="" search_path} \
      ~{true="--config_base" false="" config_base} \
      ~{true="--rules" false="" rules} \
      ~{true="--outfile" false="" outfile} \
      ~{true="--stdout" false="" stdout} \
      ~{true="--workflow" false="" supply_a_workflow}
  >>>
  parameter_meta {
    plugins_opts: "Options for application plugins [Key-Value]"
    plugins: "Load aplication plugins [Multiple; Split by \",\"]"
    config: "Override the search paths and supply your own config."
    search: "Search for config files in ~/.config.(ext) and in your current working directory. [Flag]"
    no_configs: "--no_configs tells HPC::Runner not to load any configs [Flag]"
    search_path: "Enable a search path for configs. Default is the home dir and your cwd. [Multiple]"
    config_base: "Basename of config files [Default:\".bioxworkflow\"]"
    rules: "Add rules [Multiple; Split by \",\"]"
    outfile: "Write your workflow to a file"
    stdout: "Write workflows to STDOUT [Flag]"
    supply_a_workflow: "Supply a workflow [Required]"
    help: "Prints this usage information"
  }
}