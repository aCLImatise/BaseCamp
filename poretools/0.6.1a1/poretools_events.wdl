version 1.0

task PoretoolsEvents {
  input {
    Boolean quietQuiet
    Boolean prePreBaseCalled
    File? filesFiles
  }
  command <<<
    poretools events \
      ~{filesFiles} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{true="--pre-basecalled" false="" prePreBaseCalled}
  >>>
}