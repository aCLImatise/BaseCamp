version 1.0

task OmeroConfigDef {
  input {
    String name
  }
  command <<<
    omero config def \
      ~{name}
  >>>
  parameter_meta {
    name: "Name of the profile which should be made the new active profile."
  }
}