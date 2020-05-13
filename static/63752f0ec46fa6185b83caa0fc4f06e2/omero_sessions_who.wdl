version 1.0

task OmeroSessionsWho {
  input {
    Boolean showShowUuid
  }
  command <<<
    omero sessions who \
      ~{true="--show-uuid" false="" showShowUuid}
  >>>
}