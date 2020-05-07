version 1.0

task PoretoolsNucdist {
  input {
    Boolean quietQuiet
    File? filesFiles
  }
  command <<<
    poretools nucdist \
      ~{filesFiles} \
      ~{true="--quiet" false="" quietQuiet}
  >>>
}