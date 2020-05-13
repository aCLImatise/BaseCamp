version 1.0

task OmeroLoad {
  input {
    Boolean globGlob
    Boolean keepKeepGoing
    String? orOr
  }
  command <<<
    omero load \
      ~{orOr} \
      ~{true="--glob" false="" globGlob} \
      ~{true="--keep-going" false="" keepKeepGoing}
  >>>
}