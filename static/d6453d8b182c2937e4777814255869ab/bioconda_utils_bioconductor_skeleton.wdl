version 1.0

task BiocondautilsBioconductorskeleton {
  input {
    Boolean? versioned
    Boolean? force
    String? recursive
    String? pkg_version
    String? bioc_version
    Boolean? skip_if_in_channels
    String? loglevel
    File? log_file
    File? log_file_level
    Int? log_command_max_lines
    String recipe_folder
    String config
    String package
  }
  command <<<
    bioconda_utils bioconductor_skeleton \
      ~{recipe_folder} \
      ~{config} \
      ~{package} \
      ~{if (versioned) then "--versioned" else ""} \
      ~{if (force) then "--force" else ""} \
      ~{if defined(recursive) then ("--recursive " +  '"' + recursive + '"') else ""} \
      ~{if defined(pkg_version) then ("--pkg-version " +  '"' + pkg_version + '"') else ""} \
      ~{if defined(bioc_version) then ("--bioc-version " +  '"' + bioc_version + '"') else ""} \
      ~{if (skip_if_in_channels) then "--skip-if-in-channels" else ""} \
      ~{if defined(loglevel) then ("--loglevel " +  '"' + loglevel + '"') else ""} \
      ~{if defined(log_file) then ("--logfile " +  '"' + log_file + '"') else ""} \
      ~{if defined(log_file_level) then ("--logfile-level " +  '"' + log_file_level + '"') else ""} \
      ~{if defined(log_command_max_lines) then ("--log-command-max-lines " +  '"' + log_command_max_lines + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/bioconda-utils:0.17.5--pyhdfd78af_0"
  }
  parameter_meta {
    versioned: "If specified, recipe will be created in\\nRECIPES/<package>/<version> (default: False)"
    force: "Overwrite the contents of an existing recipe. If"
    recursive: "also used, then overwrite *all* recipes"
    pkg_version: "Package version to use instead of the current one\\n(default: -)"
    bioc_version: "Version of Bioconductor to target. If not specified,\\nthen automatically finds the latest version of\\nBioconductor with the specified version in --pkg-\\nversion, or if --pkg-version not specified, then finds\\nthe the latest package version in the latest\\nBioconductor version (default: -)"
    skip_if_in_channels: "[SKIP_IF_IN_CHANNELS [SKIP_IF_IN_CHANNELS ...]]\\nWhen --recursive is used, it will build *all* recipes.\\nUse this argument to skip recursive building for\\npackages that already exist in the packages listed\\nhere. (default: ['conda-forge', 'bioconda'])"
    loglevel: "Set logging level (debug, info, warning, error,\\ncritical) (default: 'debug')"
    log_file: "Write log to file (default: -)"
    log_file_level: "Log level for log file (default: 'debug')"
    log_command_max_lines: "Limit lines emitted for commands executed (default: -)\\n"
    recipe_folder: "Path to folder containing recipes (default: recipes/)\\n(default: -)"
    config: "Path to Bioconda config (default: config.yml)\\n(default: -)"
    package: "Bioconductor package name. This is case-sensitive, and\\nmust match the package name on the Bioconductor site.\\nIf \\\"update-all-packages\\\" is specified, then all\\npackages in a given bioconductor release will be\\ncreated/updated (--force is then implied)."
  }
  output {
    File out_stdout = stdout()
  }
}