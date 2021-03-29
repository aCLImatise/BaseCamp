version 1.0

task BiocondautilsUpdatepinning {
  input {
    Array[String] packages
    Boolean? skip_additional_channels
    Boolean? skip_variants
    Int? max_bumps
    Boolean? no_leaves
    File? cache
    Boolean? pdb
    Int? threads
    String? loglevel
    File? log_file
    File? log_file_level
    Int? log_command_max_lines
    String recipe_folder
    String config
  }
  command <<<
    bioconda_utils update_pinning \
      ~{recipe_folder} \
      ~{config} \
      ~{if defined(packages) then ("--packages " +  '"' + packages + '"') else ""} \
      ~{if (skip_additional_channels) then "--skip-additional-channels" else ""} \
      ~{if (skip_variants) then "--skip-variants" else ""} \
      ~{if defined(max_bumps) then ("--max-bumps " +  '"' + max_bumps + '"') else ""} \
      ~{if (no_leaves) then "--no-leaves" else ""} \
      ~{if defined(cache) then ("--cache " +  '"' + cache + '"') else ""} \
      ~{if (pdb) then "--pdb" else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(loglevel) then ("--loglevel " +  '"' + loglevel + '"') else ""} \
      ~{if defined(log_file) then ("--logfile " +  '"' + log_file + '"') else ""} \
      ~{if defined(log_file_level) then ("--logfile-level " +  '"' + log_file_level + '"') else ""} \
      ~{if defined(log_command_max_lines) then ("--log-command-max-lines " +  '"' + log_command_max_lines + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/bioconda-utils:0.16.23--py_0"
  }
  parameter_meta {
    packages: "Glob for package[s] to update, as needed due to a\\nchange in pinnings (default: '*')"
    skip_additional_channels: "[SKIP_ADDITIONAL_CHANNELS [SKIP_ADDITIONAL_CHANNELS ...]]\\nSkip updating/bumping packges that are already built\\nwith compatible pinnings in one of the given channels\\nin addition to those listed in 'config'. (default: -)"
    skip_variants: "[SKIP_VARIANTS [SKIP_VARIANTS ...]]\\nSkip packages that use one of the given variant keys.\\n(default: -)"
    max_bumps: "Maximum number of recipes that will be updated.\\n(default: -)"
    no_leaves: "Only update recipes with dependent packages. (default:\\nFalse)"
    cache: "To speed up debugging, use repodata cached locally in\\nthe provided filename. If the file does not exist, it\\nwill be created the first time. (default: -)"
    pdb: "Drop into debugger on exception (default: False)"
    threads: "Limit maximum number of processes used. (default: 16)"
    loglevel: "Set logging level (debug, info, warning, error,\\ncritical) (default: 'info')"
    log_file: "Write log to file (default: -)"
    log_file_level: "Log level for log file (default: 'debug')"
    log_command_max_lines: "Limit lines emitted for commands executed (default: -)\\n"
    recipe_folder: "Path to folder containing recipes (default: recipes/)\\n(default: -)"
    config: "Path to Bioconda config (default: config.yml)\\n(default: -)"
  }
  output {
    File out_stdout = stdout()
  }
}