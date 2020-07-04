version 1.0

task OmeroSessionsClose {
  input {
    String session_id
  }
  command <<<
    omero sessions close \
      ~{session_id}
  >>>
  parameter_meta {
    session_id: "The session ID"
  }
}