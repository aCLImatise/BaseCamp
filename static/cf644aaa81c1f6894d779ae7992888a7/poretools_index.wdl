version 1.0

task PoretoolsIndex {
  input {
    Boolean quietQuiet
    File? filesFiles
  }
  command <<<
    poretools index \
      ~{filesFiles} \
      ~{true="--quiet" false="" quietQuiet}
  >>>
}