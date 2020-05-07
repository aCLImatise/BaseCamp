version 1.0

task OmeroSessionsGroup {
  input {
    String? targetTarget
  }
  command <<<
    omero sessions group \
      ~{targetTarget}
  >>>
}