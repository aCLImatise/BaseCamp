version 1.0

task Fs {
  input {
    Boolean? h_slash_help
    Boolean? _verbose_mode
    Boolean? new_settings_file
    Boolean? go
    File? import_settings_external
    File? create_id
  }
  command <<<
    fs \
      ~{if (h_slash_help) then "-h/-help" else ""} \
      ~{if (_verbose_mode) then "-v" else ""} \
      ~{if (new_settings_file) then "-n" else ""} \
      ~{if (go) then "-go" else ""} \
      ~{if defined(import_settings_external) then ("-import " +  '"' + import_settings_external + '"') else ""} \
      ~{if defined(create_id) then ("-createid " +  '"' + create_id + '"') else ""}
  >>>
  parameter_meta {
    h_slash_help: ":    Show this help."
    _verbose_mode: ":    Verbose mode"
    new_settings_file: ":    New settings file, overwriting any previous file"
    go: ": Do the next things that are necessary to get a complete set of finestructure runs."
    import_settings_external: ": Import some settings from an external file. If you need to set any non-trivial settings, this is the way to do it. See \\\"fs -hh\\\" for more details."
    create_id: ": Create an ID file from a PROVIDED phase file. Individuals are labelled IND1-IND<N>."
  }
  output {
    File out_stdout = stdout()
  }
}