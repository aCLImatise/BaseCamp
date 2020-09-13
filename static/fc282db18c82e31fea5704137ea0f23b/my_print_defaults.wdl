version 1.0

task MyPrintDefaults {
  input {
    File? config_file
    File? defaults_file
    File? defaults_extra_file
    String? defaults_group_suffix
    File? extra_file
    Boolean? no_defaults
    File? login_path
    Boolean? verbose
    String groups
  }
  command <<<
    my_print_defaults \
      ~{groups} \
      ~{if defined(config_file) then ("--config-file " +  '"' + config_file + '"') else ""} \
      ~{if defined(defaults_file) then ("--defaults-file " +  '"' + defaults_file + '"') else ""} \
      ~{if defined(defaults_extra_file) then ("--defaults-extra-file " +  '"' + defaults_extra_file + '"') else ""} \
      ~{if defined(defaults_group_suffix) then ("--defaults-group-suffix " +  '"' + defaults_group_suffix + '"') else ""} \
      ~{if defined(extra_file) then ("--extra-file " +  '"' + extra_file + '"') else ""} \
      ~{if (no_defaults) then "--no-defaults" else ""} \
      ~{if defined(login_path) then ("--login-path " +  '"' + login_path + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  parameter_meta {
    config_file: "Deprecated, please use --defaults-file instead. Name of\\nconfig file to read; if no extension is given, default\\nextension (e.g., .ini or .cnf) will be added"
    defaults_file: "Like --config-file, except: if first option, then read\\nthis file only, do not read global or per-user config\\nfiles; should be the first option"
    defaults_extra_file: "Read this file after the global config file and before\\nthe config file in the users home directory; should be\\nthe first option"
    defaults_group_suffix: "In addition to the given groups, read also groups with\\nthis suffix"
    extra_file: "Deprecated. Synonym for --defaults-extra-file."
    no_defaults: "Ignore reading of default option file(s), except for\\nlogin file."
    login_path: "Path to be read from under the login file."
    verbose: "Increase the output level"
    groups: ""
  }
  output {
    File out_stdout = stdout()
  }
}