version 1.0

task RemoveTrack.pl {
  input {
    Boolean? quiet
  }
  command <<<
    remove-track.pl \
      ~{true="--quiet" false="" quiet}
  >>>
  parameter_meta {
    quiet: "Do not print any progress messages."
  }
}