version 1.0

task OmeroAdminStopasync {
  input {
    Boolean forceForceRewrite
  }
  command <<<
    omero admin stopasync \
      ~{true="--force-rewrite" false="" forceForceRewrite}
  >>>
}