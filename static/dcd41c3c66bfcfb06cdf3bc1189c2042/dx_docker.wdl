version 1.0

task DxDocker {
  input {
    Boolean? quiet
  }
  command <<<
    dx-docker \
      ~{true="--quiet" false="" quiet}
  >>>
  parameter_meta {
    quiet: "Suppress printing pull progress to stderr"
  }
}