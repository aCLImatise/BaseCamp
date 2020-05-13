version 1.0

task OmeroAdminStatus {
  input {
    Boolean nodeNodeOnly
  }
  command <<<
    omero admin status \
      ~{true="--nodeonly" false="" nodeNodeOnly}
  >>>
}