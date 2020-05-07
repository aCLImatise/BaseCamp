version 1.0

task PoretoolsReadstats {
  input {
    Boolean quietQuiet
    File? filesFiles
  }
  command <<<
    poretools readstats \
      ~{filesFiles} \
      ~{true="--quiet" false="" quietQuiet}
  >>>
}