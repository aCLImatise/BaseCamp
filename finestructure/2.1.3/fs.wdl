version 1.0

task Fs {
  input {
    Boolean? go
    File? import_settings_external
    File? create_id
  }
  command <<<
    fs \
      ~{true="-go" false="" go} \
      ~{if defined(import_settings_external) then ("-import " +  '"' + import_settings_external + '"') else ""} \
      ~{if defined(create_id) then ("-createid " +  '"' + create_id + '"') else ""}
  >>>
  parameter_meta {
    go: ": Do the next things that are necessary to get a complete set of finestructure runs."
    import_settings_external: ": Import some settings from an external file. If you need to set any non-trivial settings, this is the way to do it. See \"fs -hh\" for more details."
    create_id: ": Create an ID file from a PROVIDED phase file. Individuals are labelled IND1-IND<N>."
  }
}