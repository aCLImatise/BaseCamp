version 1.0

task BiocondaUtilsDag {
  input {
    Array[String] packages
    String? format
    Boolean? hide_singletons
    String? loglevel
    String? log_file
    String? log_file_level
    String? log_command_max_lines
    String recipe_folder
    String config
  }
  command <<<
    bioconda-utils dag \
      ~{recipe_folder} \
      ~{config} \
      ~{if defined(packages) then ("--packages " +  '"' + packages + '"') else ""} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""} \
      ~{true="--hide-singletons" false="" hide_singletons} \
      ~{if defined(loglevel) then ("--loglevel " +  '"' + loglevel + '"') else ""} \
      ~{if defined(log_file) then ("--logfile " +  '"' + log_file + '"') else ""} \
      ~{if defined(log_file_level) then ("--logfile-level " +  '"' + log_file_level + '"') else ""} \
      ~{if defined(log_command_max_lines) then ("--log-command-max-lines " +  '"' + log_command_max_lines + '"') else ""}
  >>>
  parameter_meta {
    packages: "Glob for package[s] to show in DAG. Default is to show all packages. Can be specified more than once (default: '*')"
    format: "Set format to print graph. \"gml\" and \"dot\" can be imported into graph visualization tools (graphviz, gephi, cytoscape). \"txt\" will print out recipes grouped by independent subdags, largest subdag first, each in topologically sorted order. Singleton subdags (if not hidden with --hide-singletons) are reported as one large group at the end. (default: 'gml')"
    hide_singletons: "Hide singletons in the printed graph. (default: False)"
    loglevel: "Set logging level (debug, info, warning, error, critical) (default: 'info')"
    log_file: "Write log to file (default: -)"
    log_file_level: "Log level for log file (default: 'debug')"
    log_command_max_lines: "Limit lines emitted for commands executed (default: -)"
    recipe_folder: "Path to folder containing recipes (default: recipes/) (default: -)"
    config: "Path to Bioconda config (default: config.yml) (default: -)"
  }
}