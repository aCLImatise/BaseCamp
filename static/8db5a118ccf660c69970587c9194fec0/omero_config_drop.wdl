version 1.0

task OmeroConfigDrop {
  input {
    String? nameName
  }
  command <<<
    omero config drop \
      ~{nameName}
  >>>
}