version 1.0

task MagpurifyTetraFreqOut {
  input {
    String? cut_off
    Boolean? weighted_mean
    String mag_purify
    String tetra_freq
    String fna
    String out
  }
  command <<<
    magpurify tetra-freq out \
      ~{mag_purify} \
      ~{tetra_freq} \
      ~{fna} \
      ~{out} \
      ~{if defined(cut_off) then ("--cutoff " +  '"' + cut_off + '"') else ""} \
      ~{true="--weighted-mean" false="" weighted_mean}
  >>>
  parameter_meta {
    cut_off: ""
    weighted_mean: ""
    mag_purify: ""
    tetra_freq: ""
    fna: ""
    out: ""
  }
}