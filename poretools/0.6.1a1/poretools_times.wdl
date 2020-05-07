version 1.0

task PoretoolsTimes {
  input {
    Boolean quietQuiet
    Boolean utcUtc
    File? filesFiles
  }
  command <<<
    poretools times \
      ~{filesFiles} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{true="--utc" false="" utcUtc}
  >>>
}