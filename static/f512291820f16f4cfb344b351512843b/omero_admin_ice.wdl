version 1.0

task OmeroAdminIce {
  input {
    String? argumentArgument
  }
  command <<<
    omero admin ice \
      ~{argumentArgument}
  >>>
}