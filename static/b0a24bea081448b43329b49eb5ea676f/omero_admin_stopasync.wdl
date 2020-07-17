version 1.0

task OmeroAdminStopasync {
  input {
    Boolean? force_rewrite
  }
  command <<<
    omero admin stopasync \
      ~{true="--force-rewrite" false="" force_rewrite}
  >>>
  parameter_meta {
    force_rewrite: "Force the configuration to be rewritten before checking the server status"
  }
}