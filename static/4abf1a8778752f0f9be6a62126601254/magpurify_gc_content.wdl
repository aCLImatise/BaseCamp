version 1.0

task MagpurifyGcContent {
  input {
    String? cut_off
    Boolean? weighted_mean
  }
  command <<<
    magpurify gc-content \
      ~{if defined(cut_off) then ("--cutoff " +  '"' + cut_off + '"') else ""} \
      ~{true="--weighted-mean" false="" weighted_mean}
  >>>
  parameter_meta {
    cut_off: "Cutoff (default: 15.75)"
    weighted_mean: "Compute the mean weighted by the contig length (default: False)"
  }
}