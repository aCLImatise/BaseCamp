version 1.0

task Gatc.track.maker.pl {
  input {
    Boolean? mi_to
    Boolean? name
    Boolean? scaffolds
  }
  command <<<
    gatc.track.maker.pl \
      ~{true="--mito" false="" mi_to} \
      ~{true="--name" false="" name} \
      ~{true="--scaffolds" false="" scaffolds}
  >>>
  parameter_meta {
    mi_to: "Process mitochondrial chromosome (not recommended)"
    name: "Name of organism (for output file)"
    scaffolds: "Process scaffold assemblies (not recommended)"
  }
}