version 1.0

task BamSplit.pl {
  input {
    Boolean bamBam
    Boolean bedBed
    Boolean bwBw
    Boolean bwBwDir
    Boolean csCs
    Boolean normNorm
    Boolean outOut
    Boolean reverseReverse
    Boolean scaleScale
    Boolean uniqUniq
    Boolean logLog
    Boolean manMan
  }
  command <<<
    bam_split.pl \
      ~{true="--bam" false="" bamBam} \
      ~{true="--bed" false="" bedBed} \
      ~{true="--bw" false="" bwBw} \
      ~{true="--bwdir" false="" bwBwDir} \
      ~{true="--cs" false="" csCs} \
      ~{true="--norm" false="" normNorm} \
      ~{true="--out" false="" outOut} \
      ~{true="--reverse" false="" reverseReverse} \
      ~{true="--scale" false="" scaleScale} \
      ~{true="--uniq" false="" uniqUniq} \
      ~{true="--log" false="" logLog} \
      ~{true="--man" false="" manMan}
  >>>
}