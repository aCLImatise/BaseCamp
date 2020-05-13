version 1.0

task OmeroSessionsClose {
  input {
    String? sessionSessionId
  }
  command <<<
    omero sessions close \
      ~{sessionSessionId}
  >>>
}