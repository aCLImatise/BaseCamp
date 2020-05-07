version 1.0

task PoretoolsMetadata {
  input {
    Boolean quietQuiet
    Boolean readRead
    File? filesFiles
  }
  command <<<
    poretools metadata \
      ~{filesFiles} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{true="--read" false="" readRead}
  >>>
}