version 1.0

task RemoveTrack.pl {
  input {
    Boolean quietQuiet
  }
  command <<<
    remove-track.pl \
      ~{true="--quiet" false="" quietQuiet}
  >>>
}