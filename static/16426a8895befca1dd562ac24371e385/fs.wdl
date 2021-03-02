version 1.0

task Fs {
  input {
    Boolean? _verbose_mode
    Boolean? new_settings_file
    Boolean? go
    File? import_settings_need
    File? create_id
  }
  command <<<
    fs \
      ~{if (_verbose_mode) then "-v" else ""} \
      ~{if (new_settings_file) then "-n" else ""} \
      ~{if (go) then "-go" else ""} \
      ~{if defined(import_settings_need) then ("-import " +  '"' + import_settings_need + '"') else ""} \
      ~{if defined(create_id) then ("-createid " +  '"' + create_id + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    _verbose_mode: ":    Verbose mode"
    new_settings_file: ":    New settings file, overwriting any previous file"
    go: ": Do the next things that are necessary to get a complete set of finestructure runs."
    import_settings_need: ": Import some settings from an external file. If you need to set any non-trivial settings, this is the way to do it. See \\\"fs -hh\\\" for more details."
    create_id: ": Create an ID file from a PROVIDED phase file. Individuals are labelled IND1-IND<N>."
  }
  output {
    File out_stdout = stdout()
  }
}