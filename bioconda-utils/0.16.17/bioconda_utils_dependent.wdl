version 1.0

task BiocondaUtilsDependent {
  input {
    Boolean? restrict
    Array[String] dependencies
    Array[String] reverse_dependencies
    String? loglevel
    String? log_file
    String? log_file_level
    String? log_command_max_lines
    String recipe_folder
    String config
  }
  command <<<
    bioconda-utils dependent \
      ~{recipe_folder} \
      ~{config} \
      ~{true="--restrict" false="" restrict} \
      ~{if defined(dependencies) then ("--dependencies " +  '"' + dependencies + '"') else ""} \
      ~{if defined(reverse_dependencies) then ("--reverse-dependencies " +  '"' + reverse_dependencies + '"') else ""} \
      ~{if defined(loglevel) then ("--loglevel " +  '"' + loglevel + '"') else ""} \
      ~{if defined(log_file) then ("--logfile " +  '"' + log_file + '"') else ""} \
      ~{if defined(log_file_level) then ("--logfile-level " +  '"' + log_file_level + '"') else ""} \
      ~{if defined(log_command_max_lines) then ("--log-command-max-lines " +  '"' + log_command_max_lines + '"') else ""}
  >>>
  parameter_meta {
    restrict: "Restrict --dependencies to packages in `recipe_folder`. Has no effect if --reverse- dependencies, which always looks just in the recipe dir. (default: False)"
    dependencies: "Return recipes in `recipe_folder` in the dependency chain for the packages listed here. Answers the question \"what does PACKAGE need?\" (default: -)"
    reverse_dependencies: "Return recipes in `recipe_folder` in the reverse dependency chain for packages listed here. Answers the question \"what depends on PACKAGE?\" (default: -)"
    loglevel: "Set logging level (debug, info, warning, error, critical) (default: 'info')"
    log_file: "Write log to file (default: -)"
    log_file_level: "Log level for log file (default: 'debug')"
    log_command_max_lines: "Limit lines emitted for commands executed (default: -)"
    recipe_folder: "Path to folder containing recipes (default: recipes/) (default: -)"
    config: "Path to Bioconda config (default: config.yml) (default: -)"
  }
}