version 1.0

task SingularityMount {
  input {
    Boolean writableWritable
    Boolean overlayOverlay
  }
  command <<<
    singularity mount \
      ~{true="--writable" false="" writableWritable} \
      ~{true="--overlay" false="" overlayOverlay}
  >>>
}