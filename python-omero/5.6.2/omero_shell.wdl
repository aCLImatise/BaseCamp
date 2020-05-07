version 1.0

task OmeroShell {
  input {
    Boolean loginLogin
    String? argArg
  }
  command <<<
    omero shell \
      ~{argArg} \
      ~{true="--login" false="" loginLogin}
  >>>
}