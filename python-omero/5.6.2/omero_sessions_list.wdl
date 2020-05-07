version 1.0

task OmeroSessionsList {
  input {
    Boolean noNoPurge
  }
  command <<<
    omero sessions list \
      ~{true="--no-purge" false="" noNoPurge}
  >>>
}