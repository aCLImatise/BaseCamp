version 1.0

task Gff2bed.pl {
  input {
    Boolean? gff
    Boolean? feature
    Boolean? out
    Boolean? man
  }
  command <<<
    gff2bed.pl \
      ~{true="--gff" false="" gff} \
      ~{true="--feature" false="" feature} \
      ~{true="--out" false="" out} \
      ~{true="--man" false="" man}
  >>>
  parameter_meta {
    gff: "Input GFF file."
    feature: "Specify feature type (eg. CDS,tRNA,rRNA,SBS, etc) to be extracted from GFF3."
    out: "Output path."
    man: "Prints the manual page and exits"
  }
}