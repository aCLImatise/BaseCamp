version 1.0

task BioxworkflowplAdd {
  input {
    Boolean? plugins_opts
    Boolean? plugins
    Boolean? config
    Boolean? search_path
    String? no_configs
    Boolean? search
    Boolean? rules
    Boolean? supply_a_workflow
    Boolean? stdout
    File? outfile
    String config_dot
    String help
  }
  command <<<
    biox_workflow_pl add \
      ~{config_dot} \
      ~{help} \
      ~{if (plugins_opts) then "--plugins_opts" else ""} \
      ~{if (plugins) then "--plugins" else ""} \
      ~{if (config) then "--config" else ""} \
      ~{if (search_path) then "--search_path" else ""} \
      ~{if defined(no_configs) then ("--no_configs " +  '"' + no_configs + '"') else ""} \
      ~{if (search) then "--search" else ""} \
      ~{if (rules) then "--rules" else ""} \
      ~{if (supply_a_workflow) then "--workflow" else ""} \
      ~{if (stdout) then "--stdout" else ""} \
      ~{if (outfile) then "--outfile" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    plugins_opts: "Options for application plugins [Key-Value]"
    plugins: "Load aplication plugins [Multiple; Split by \\\",\\\"]"
    config: "Override the search paths and supply your own"
    search_path: "Enable a search path for configs. Default is the\\nhome dir and your cwd. [Multiple]"
    no_configs: "HPC::Runner not to load any\\nconfigs [Flag]"
    search: "Search for config files in ~/.config.(ext) and in\\nyour current working directory. [Flag]"
    rules: "Add rules [Multiple; Split by \\\",\\\"]"
    supply_a_workflow: "Supply a workflow [Required]"
    stdout: "Write workflows to STDOUT [Flag]"
    outfile: "Write your workflow to a file. The default will\\nwrite it out to the same workflow."
    config_dot: "--config_base         Basename of config files [Default:\\\".bioxworkflow\\\"]"
    help: "Prints this usage information"
  }
  output {
    File out_stdout = stdout()
    File out_outfile = "${in_outfile}"
  }
}