version 1.0

task BiocondaUtilsBioconductorSkeleton {
  input {
    Boolean? versioned
    Boolean? force
    String? pkg_version
    String? bioc_version
    Boolean? recursive
    Boolean? skip_if_in_channels
    String? loglevel
    String? log_file
    String? log_file_level
    String? log_command_max_lines
    String recipe_folder
    String config
    String package
  }
  command <<<
    bioconda-utils bioconductor-skeleton \
      ~{recipe_folder} \
      ~{config} \
      ~{package} \
      ~{true="--versioned" false="" versioned} \
      ~{true="--force" false="" force} \
      ~{if defined(pkg_version) then ("--pkg-version " +  '"' + pkg_version + '"') else ""} \
      ~{if defined(bioc_version) then ("--bioc-version " +  '"' + bioc_version + '"') else ""} \
      ~{true="--recursive" false="" recursive} \
      ~{true="--skip-if-in-channels" false="" skip_if_in_channels} \
      ~{if defined(loglevel) then ("--loglevel " +  '"' + loglevel + '"') else ""} \
      ~{if defined(log_file) then ("--logfile " +  '"' + log_file + '"') else ""} \
      ~{if defined(log_file_level) then ("--logfile-level " +  '"' + log_file_level + '"') else ""} \
      ~{if defined(log_command_max_lines) then ("--log-command-max-lines " +  '"' + log_command_max_lines + '"') else ""}
  >>>
  parameter_meta {
    versioned: "If specified, recipe will be created in RECIPES/<package>/<version> (default: False)"
    force: "Overwrite the contents of an existing recipe. If --recursive is also used, then overwrite *all* recipes created. (default: False)"
    pkg_version: "Package version to use instead of the current one (default: -)"
    bioc_version: "Version of Bioconductor to target. If not specified, then automatically finds the latest version of Bioconductor with the specified version in --pkg- version, or if --pkg-version not specified, then finds the the latest package version in the latest Bioconductor version (default: -)"
    recursive: "Creates the recipes for all Bioconductor and CRAN dependencies of the specified package. (default: False)"
    skip_if_in_channels: "[SKIP_IF_IN_CHANNELS [SKIP_IF_IN_CHANNELS ...]] When --recursive is used, it will build *all* recipes. Use this argument to skip recursive building for packages that already exist in the packages listed here. (default: ['conda-forge', 'bioconda'])"
    loglevel: "Set logging level (debug, info, warning, error, critical) (default: 'debug')"
    log_file: "Write log to file (default: -)"
    log_file_level: "Log level for log file (default: 'debug')"
    log_command_max_lines: "Limit lines emitted for commands executed (default: -)"
    recipe_folder: "Path to folder containing recipes (default: recipes/) (default: -)"
    config: "Path to Bioconda config (default: config.yml) (default: -)"
    package: "Bioconductor package name. This is case-sensitive, and must match the package name on the Bioconductor site. If \"update-all-packages\" is specified, then all packages in a given bioconductor release will be created/updated (--force is then implied)."
  }
}