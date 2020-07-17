version 1.0

task OmeroAdminIce {
  input {
    String argument
  }
  command <<<
    omero admin ice \
      ~{argument}
  >>>
  parameter_meta {
    argument: "Arguments joined together to make an Ice command. If not present, the user will enter a console"
  }
}