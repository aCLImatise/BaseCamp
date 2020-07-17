version 1.0

task Ngless {
  input {
    Boolean? version_short
    Boolean? version_debug
    Boolean? date_short
    String? script
    Boolean? validate_only
    Boolean? print_last
    Boolean? trace
    Boolean? no_trace
    String? threads
    Boolean? strict_threads
    Boolean? no_strict_threads
    Boolean? create_report
    Boolean? no_create_report
    String? html_report_directory
    String? temporary_directory
    Boolean? keep_temporary_files
    Boolean? no_keep_temporary_files
    String? config_file
    Boolean? no_header
    Boolean? subsample
    Boolean? experimental_features
    String? export_json
    String? export_cwl
    Boolean? check_deprecation
    String? search_dir
    String? search_path
    String? index_path
    Boolean? check_install
    Boolean? verbose
    String? color
    String filename_script_interpret
    String ref
  }
  command <<<
    ngless \
      ~{filename_script_interpret} \
      ~{ref} \
      ~{true="--version-short" false="" version_short} \
      ~{true="--version-debug" false="" version_debug} \
      ~{true="--date-short" false="" date_short} \
      ~{if defined(script) then ("--script " +  '"' + script + '"') else ""} \
      ~{true="--validate-only" false="" validate_only} \
      ~{true="--print-last" false="" print_last} \
      ~{true="--trace" false="" trace} \
      ~{true="--no-trace" false="" no_trace} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{true="--strict-threads" false="" strict_threads} \
      ~{true="--no-strict-threads" false="" no_strict_threads} \
      ~{true="--create-report" false="" create_report} \
      ~{true="--no-create-report" false="" no_create_report} \
      ~{if defined(html_report_directory) then ("--html-report-directory " +  '"' + html_report_directory + '"') else ""} \
      ~{if defined(temporary_directory) then ("--temporary-directory " +  '"' + temporary_directory + '"') else ""} \
      ~{true="--keep-temporary-files" false="" keep_temporary_files} \
      ~{true="--no-keep-temporary-files" false="" no_keep_temporary_files} \
      ~{if defined(config_file) then ("--config-file " +  '"' + config_file + '"') else ""} \
      ~{true="--no-header" false="" no_header} \
      ~{true="--subsample" false="" subsample} \
      ~{true="--experimental-features" false="" experimental_features} \
      ~{if defined(export_json) then ("--export-json " +  '"' + export_json + '"') else ""} \
      ~{if defined(export_cwl) then ("--export-cwl " +  '"' + export_cwl + '"') else ""} \
      ~{true="--check-deprecation" false="" check_deprecation} \
      ~{if defined(search_dir) then ("--search-dir " +  '"' + search_dir + '"') else ""} \
      ~{if defined(search_path) then ("--search-path " +  '"' + search_path + '"') else ""} \
      ~{if defined(index_path) then ("--index-path " +  '"' + index_path + '"') else ""} \
      ~{true="--check-install" false="" check_install} \
      ~{true="--verbose" false="" verbose} \
      ~{if defined(color) then ("--color " +  '"' + color + '"') else ""}
  >>>
  parameter_meta {
    version_short: "print just version string (useful for scripting)"
    version_debug: "print detailed version information"
    date_short: "print just release date string (useful for scripting)"
    script: "inline script to execute"
    validate_only: "Only validate input, do not run script"
    print_last: "print value of last line in script"
    trace: "Set highest verbosity mode"
    no_trace: "opposite of --trace"
    threads: "Nr of threads to use"
    strict_threads: "strictly respect the --threads option (by default, NGLess will, occasionally, use more threads than specified)"
    no_strict_threads: "opposite of --strict-threads"
    create_report: "create the report directory"
    no_create_report: "opposite of --create-report"
    html_report_directory: "name of output directory"
    temporary_directory: "Directory where to store temporary files"
    keep_temporary_files: "Whether to keep temporary files (default is delete them)"
    no_keep_temporary_files: "opposite of --keep-temporary-files"
    config_file: "Configuration files to parse"
    no_header: "Do not print copyright information"
    subsample: "Subsample mode: quickly test a pipeline by discarding 99% of the input"
    experimental_features: "Whether to allow the use of experimental features"
    export_json: "File to write JSON representation of script to"
    export_cwl: "File to write CWL wrapper of given script"
    check_deprecation: "Check if ngless version or any used modules have been deprecated"
    search_dir: "Deprecated. Use --search-path instead"
    search_path: "Reference search directories (replace <references> in script)"
    index_path: "Index path (directory where indices are stored)"
    check_install: "Check if ngless is correctly installed"
    verbose: "Print paths"
    color: "Color settings, one of 'auto' (color if writing to a terminal, this is the default), 'force' (always color), 'no' (no color)."
    filename_script_interpret: "Filename of script to interpret"
    ref: "Name of reference to install"
  }
}