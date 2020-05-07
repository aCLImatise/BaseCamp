version 1.0

task Gff2bed.pl {
  input {
    Boolean gffGff
    Boolean featureFeature
    Boolean outOut
    Boolean manMan
  }
  command <<<
    gff2bed.pl \
      ~{true="--gff" false="" gffGff} \
      ~{true="--feature" false="" featureFeature} \
      ~{true="--out" false="" outOut} \
      ~{true="--man" false="" manMan}
  >>>
}