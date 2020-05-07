version 1.0

task PoretoolsQualdist {
  input {
    Boolean quietQuiet
    File? filesFiles
  }
  command <<<
    poretools qualdist \
      ~{filesFiles} \
      ~{true="--quiet" false="" quietQuiet}
  >>>
}