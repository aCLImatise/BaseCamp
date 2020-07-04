version 1.0

task BiocondaUtilsUpdatePinning {
  input {
    Boolean? bump_only_python
    String? cache
    Boolean? pdb
    String? threads
    String? loglevel
    String? log_file
    String? log_file_level
    String? log_command_max_lines
    Array[String] packages
    String recipe_folder
    String config
  }
  command <<<
    bioconda-utils update-pinning \
      ~{recipe_folder} \
      ~{config} \
      ~{true="--bump-only-python" false="" bump_only_python} \
      ~{if defined(cache) then ("--cache " +  '"' + cache + '"') else ""} \
      ~{true="--pdb" false="" pdb} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(loglevel) then ("--loglevel " +  '"' + loglevel + '"') else ""} \
      ~{if defined(log_file) then ("--logfile " +  '"' + log_file + '"') else ""} \
      ~{if defined(log_file_level) then ("--logfile-level " +  '"' + log_file_level + '"') else ""} \
      ~{if defined(log_command_max_lines) then ("--log-command-max-lines " +  '"' + log_command_max_lines + '"') else ""} \
      ~{if defined(packages) then ("--packages " +  '"' + packages + '"') else ""}
  >>>
  parameter_meta {
    bump_only_python: "Bump package build numbers even if the only applicable pinning change is the python version. This is generally required unless you plan on building everything. (default: False)"
    cache: "To speed up debugging, use repodata cached locally in the provided filename. If the file does not exist, it will be created the first time. (default: -)"
    pdb: "Drop into debugger on exception (default: False)"
    threads: "Limit maximum number of processes used. (default: 16)"
    loglevel: "Set logging level (debug, info, warning, error, critical) (default: 'info')"
    log_file: "Write log to file (default: -)"
    log_file_level: "Log level for log file (default: 'debug')"
    log_command_max_lines: "Limit lines emitted for commands executed (default: -)"
    packages: ""
    recipe_folder: "Path to folder containing recipes (default: recipes/) (default: -)"
    config: "Path to Bioconda config (default: config.yml) (default: -)"
  }
}