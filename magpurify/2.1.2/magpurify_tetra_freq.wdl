version 1.0

task MagpurifyTetraFreq {
  input {
    String? cut_off
    Boolean? weighted_mean
  }
  command <<<
    magpurify tetra-freq \
      ~{if defined(cut_off) then ("--cutoff " +  '"' + cut_off + '"') else ""} \
      ~{true="--weighted-mean" false="" weighted_mean}
  >>>
  parameter_meta {
    cut_off: "Cutoff (default: 0.06)"
    weighted_mean: "Compute the mean weighted by the contig length (default: False)"
  }
}