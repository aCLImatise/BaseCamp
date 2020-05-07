version 1.0

task BamUniq.pl {
  input {
    Boolean bamBam
    Boolean bandBand
    Boolean outOut
    Boolean manMan
  }
  command <<<
    bam_uniq.pl \
      ~{true="--bam" false="" bamBam} \
      ~{true="--band" false="" bandBand} \
      ~{true="--out" false="" outOut} \
      ~{true="--man" false="" manMan}
  >>>
}