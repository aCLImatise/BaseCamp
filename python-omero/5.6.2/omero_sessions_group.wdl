version 1.0

task OmeroSessionsGroup {
  input {
    String target
  }
  command <<<
    omero sessions group \
      ~{target}
  >>>
  parameter_meta {
    target: "Id or name of the group to switch this session to"
  }
}