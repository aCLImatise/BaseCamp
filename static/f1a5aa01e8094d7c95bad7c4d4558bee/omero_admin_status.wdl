version 1.0

task OmeroAdminStatus {
  input {
    Boolean? node_only
  }
  command <<<
    omero admin status \
      ~{true="--nodeonly" false="" node_only}
  >>>
  parameter_meta {
    node_only: "If set, then only tests if the icegridnode is running"
  }
}