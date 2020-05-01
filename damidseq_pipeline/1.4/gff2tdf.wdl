version 1.0

task Gff2tdf.pl {
  input {
    Boolean formatFormat
    Boolean genomeGenome
    Boolean igvIgvPath
  }
  command <<<
    gff2tdf.pl \
      ~{true="--format" false="" formatFormat} \
      ~{true="--genome" false="" genomeGenome} \
      ~{true="--igvpath" false="" igvIgvPath}
  >>>
}