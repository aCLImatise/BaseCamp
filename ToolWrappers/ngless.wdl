version 1.0

task Ngless {
  input {
    File? local_file
    File? install_reference_data
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
    Directory? html_report_directory
    Directory? temporary_directory
    Boolean? keep_temporary_files
    Boolean? no_keep_temporary_files
    File? config_file
    Boolean? no_header
    Boolean? subsample
    Boolean? experimental_features
    File? export_json
    File? export_cwl
    Boolean? check_deprecation
    File? search_path
    File? index_path
    Boolean? check_install
    Boolean? verbose
    String? color
    String filename_script_interpret
    String deprecated
    String ref
  }
  command <<<
    ngless \
      ~{filename_script_interpret} \
      ~{deprecated} \
      ~{ref} \
      ~{if defined(local_file) then ("--local-file " +  '"' + local_file + '"') else ""} \
      ~{if defined(install_reference_data) then ("--install-reference-data " +  '"' + install_reference_data + '"') else ""} \
      ~{if (version_short) then "--version-short" else ""} \
      ~{if (version_debug) then "--version-debug" else ""} \
      ~{if (date_short) then "--date-short" else ""} \
      ~{if defined(script) then ("--script " +  '"' + script + '"') else ""} \
      ~{if (validate_only) then "--validate-only" else ""} \
      ~{if (print_last) then "--print-last" else ""} \
      ~{if (trace) then "--trace" else ""} \
      ~{if (no_trace) then "--no-trace" else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if (strict_threads) then "--strict-threads" else ""} \
      ~{if (no_strict_threads) then "--no-strict-threads" else ""} \
      ~{if (create_report) then "--create-report" else ""} \
      ~{if (no_create_report) then "--no-create-report" else ""} \
      ~{if defined(html_report_directory) then ("--html-report-directory " +  '"' + html_report_directory + '"') else ""} \
      ~{if defined(temporary_directory) then ("--temporary-directory " +  '"' + temporary_directory + '"') else ""} \
      ~{if (keep_temporary_files) then "--keep-temporary-files" else ""} \
      ~{if (no_keep_temporary_files) then "--no-keep-temporary-files" else ""} \
      ~{if defined(config_file) then ("--config-file " +  '"' + config_file + '"') else ""} \
      ~{if (no_header) then "--no-header" else ""} \
      ~{if (subsample) then "--subsample" else ""} \
      ~{if (experimental_features) then "--experimental-features" else ""} \
      ~{if defined(export_json) then ("--export-json " +  '"' + export_json + '"') else ""} \
      ~{if defined(export_cwl) then ("--export-cwl " +  '"' + export_cwl + '"') else ""} \
      ~{if (check_deprecation) then "--check-deprecation" else ""} \
      ~{if defined(search_path) then ("--search-path " +  '"' + search_path + '"') else ""} \
      ~{if defined(index_path) then ("--index-path " +  '"' + index_path + '"') else ""} \
      ~{if (check_install) then "--check-install" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(color) then ("--color " +  '"' + color + '"') else ""}
  >>>
  parameter_meta {
    local_file: "| --download-demo DEMO-NAME |"
    install_reference_data: "| --print-path EXEC | --check-install"
    version_short: "print just version string (useful for scripting)"
    version_debug: "print detailed version information"
    date_short: "print just release date string (useful for scripting)"
    script: "inline script to execute"
    validate_only: "Only validate input, do not run script"
    print_last: "print value of last line in script"
    trace: "Set highest verbosity mode"
    no_trace: "opposite of --trace"
    threads: "Nr of threads to use"
    strict_threads: "strictly respect the --threads option (by default,\\nNGLess will, occasionally, use more threads than\\nspecified)"
    no_strict_threads: "opposite of --strict-threads"
    create_report: "create the report directory"
    no_create_report: "opposite of --create-report"
    html_report_directory: "name of output directory"
    temporary_directory: "Directory where to store temporary files"
    keep_temporary_files: "Whether to keep temporary files (default is delete\\nthem)"
    no_keep_temporary_files: "opposite of --keep-temporary-files"
    config_file: "Configuration files to parse"
    no_header: "Do not print copyright information"
    subsample: "Subsample mode: quickly test a pipeline by discarding\\n99% of the input"
    experimental_features: "Whether to allow the use of experimental features"
    export_json: "File to write JSON representation of script to"
    export_cwl: "File to write CWL wrapper of given script"
    check_deprecation: "Check if ngless version or any used modules have been"
    search_path: "Reference search directories (replace <references> in\\nscript)"
    index_path: "Index path (directory where indices are stored)"
    check_install: "Check if ngless is correctly installed"
    verbose: "Print paths"
    color: "Color settings, one of 'auto' (color if writing to a\\nterminal, this is the default), 'force' (always\\ncolor), 'no' (no color)."
    filename_script_interpret: "Filename of script to interpret"
    deprecated: "--search-dir ARG         Deprecated. Use --search-path instead"
    ref: "Name of reference to install"
  }
  output {
    File out_stdout = stdout()
    Directory out_html_report_directory = "${in_html_report_directory}"
  }
}