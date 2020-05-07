version 1.0

task FastqSort {
  input {
    Boolean reverseReverse
    Boolean idId
    Boolean idnIdn
    Boolean seqSeq
    Boolean randomRandom
    Boolean seedSeed
    Boolean gcGc
    Boolean meanMeanQual
  }
  command <<<
    fastq-sort \
      ~{true="--reverse" false="" reverseReverse} \
      ~{true="--id" false="" idId} \
      ~{true="--idn" false="" idnIdn} \
      ~{true="--seq" false="" seqSeq} \
      ~{true="--random" false="" randomRandom} \
      ~{true="--seed" false="" seedSeed} \
      ~{true="--gc" false="" gcGc} \
      ~{true="--mean-qual" false="" meanMeanQual}
  >>>
}