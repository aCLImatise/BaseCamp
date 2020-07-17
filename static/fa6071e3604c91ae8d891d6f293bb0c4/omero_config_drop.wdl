version 1.0

task OmeroConfigDrop {
  input {
    String name
  }
  command <<<
    omero config drop \
      ~{name}
  >>>
  parameter_meta {
    name: "Name of the profile to remove"
  }
}