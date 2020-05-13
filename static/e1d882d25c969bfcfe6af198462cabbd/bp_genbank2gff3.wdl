version 1.0

task BpGenbank2gff3.pl {
  input {
    Boolean formatFormat
    Boolean gffGffVersion
    Boolean quietQuiet
    Boolean typeTypeSource
  }
  command <<<
    bp_genbank2gff3.pl \
      ~{true="--format" false="" formatFormat} \
      ~{true="--GFF_VERSION" false="" gffGffVersion} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{true="--typesource" false="" typeTypeSource}
  >>>
}