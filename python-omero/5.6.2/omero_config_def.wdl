version 1.0

task OmeroConfigDef {
  input {
    String? nameName
  }
  command <<<
    omero config def \
      ~{nameName}
  >>>
}