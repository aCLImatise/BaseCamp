version 1.0

task BioxNew {
  input {
    Boolean? plugins
    Boolean? plugins_opts
    String? no_configs
    Boolean? config
    Boolean? search
    Boolean? search_path
    Boolean? rules
    Boolean? stdout
    Boolean? outfile
    Boolean? supply_a_workflow
    String config_dot
    String help
  }
  command <<<
    biox new \
      ~{config_dot} \
      ~{help} \
      ~{if (plugins) then "--plugins" else ""} \
      ~{if (plugins_opts) then "--plugins_opts" else ""} \
      ~{if defined(no_configs) then ("--no_configs " +  '"' + no_configs + '"') else ""} \
      ~{if (config) then "--config" else ""} \
      ~{if (search) then "--search" else ""} \
      ~{if (search_path) then "--search_path" else ""} \
      ~{if (rules) then "--rules" else ""} \
      ~{if (stdout) then "--stdout" else ""} \
      ~{if (outfile) then "--outfile" else ""} \
      ~{if (supply_a_workflow) then "--workflow" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    plugins: "Load aplication plugins [Multiple; Split by \\\",\\\"]"
    plugins_opts: "Options for application plugins [Key-Value]"
    no_configs: "HPC::Runner not to load any\\nconfigs [Flag]"
    config: "Override the search paths and supply your own"
    search: "Search for config files in ~/.config.(ext) and in\\nyour current working directory. [Flag]"
    search_path: "Enable a search path for configs. Default is the\\nhome dir and your cwd. [Multiple]"
    rules: "Add rules [Multiple; Split by \\\",\\\"]"
    stdout: "Write workflows to STDOUT [Flag]"
    outfile: "Write your workflow to a file"
    supply_a_workflow: "Supply a workflow [Required]"
    config_dot: "--config_base         Basename of config files [Default:\\\".bioxworkflow\\\"]"
    help: "Prints this usage information"
  }
  output {
    File out_stdout = stdout()
  }
}