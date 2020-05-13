version 1.0

task GenomeOntology.pl {
  input {
    Boolean gGSize
    Boolean bgBg
  }
  command <<<
    GenomeOntology.pl \
      ~{true="-gsize" false="" gGSize} \
      ~{true="-bg" false="" bgBg}
  >>>
}