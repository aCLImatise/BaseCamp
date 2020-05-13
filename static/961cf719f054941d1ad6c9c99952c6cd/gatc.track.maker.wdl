version 1.0

task Gatc.track.maker.pl {
  input {
    Boolean miMiTo
    Boolean nameName
    Boolean scaffoldsScaffolds
  }
  command <<<
    gatc.track.maker.pl \
      ~{true="--mito" false="" miMiTo} \
      ~{true="--name" false="" nameName} \
      ~{true="--scaffolds" false="" scaffoldsScaffolds}
  >>>
}