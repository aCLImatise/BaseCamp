version 1.0

task FastqSort {
  input {
    Boolean? reverse
    Boolean? id
    Boolean? idn
    Boolean? seq
    Boolean? random
    Boolean? seed
    Boolean? gc
    Boolean? mean_qual
  }
  command <<<
    fastq-sort \
      ~{true="--reverse" false="" reverse} \
      ~{true="--id" false="" id} \
      ~{true="--idn" false="" idn} \
      ~{true="--seq" false="" seq} \
      ~{true="--random" false="" random} \
      ~{true="--seed" false="" seed} \
      ~{true="--gc" false="" gc} \
      ~{true="--mean-qual" false="" mean_qual}
  >>>
  parameter_meta {
    reverse: "sort in reverse (i.e., descending) order"
    id: "sort alphabetically by read identifier"
    idn: "sort alphanumerically by read identifier according to \"samtools sort -n\""
    seq: "sort alphabetically by sequence"
    random: "randomly shuffle the sequences"
    seed: "[=SEED]  seed to use for random shuffle."
    gc: "sort by GC content"
    mean_qual: "sort by median quality score"
  }
}