version 1.0

task Fastqsort {
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
    fastq_sort \
      ~{if (reverse) then "--reverse" else ""} \
      ~{if (id) then "--id" else ""} \
      ~{if (idn) then "--idn" else ""} \
      ~{if (seq) then "--seq" else ""} \
      ~{if (random) then "--random" else ""} \
      ~{if (seed) then "--seed" else ""} \
      ~{if (gc) then "--gc" else ""} \
      ~{if (mean_qual) then "--mean-qual" else ""}
  >>>
  parameter_meta {
    reverse: "sort in reverse (i.e., descending) order"
    id: "sort alphabetically by read identifier"
    idn: "sort alphanumerically by read identifier according to \\\"samtools sort -n\\\""
    seq: "sort alphabetically by sequence"
    random: "randomly shuffle the sequences"
    seed: "[=SEED]  seed to use for random shuffle."
    gc: "sort by GC content"
    mean_qual: "sort by median quality score"
  }
  output {
    File out_stdout = stdout()
  }
}