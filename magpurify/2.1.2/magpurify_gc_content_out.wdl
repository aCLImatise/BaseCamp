version 1.0

task MagpurifyGcContentOut {
  input {
    String? cut_off
    Boolean? weighted_mean
    String mag_purify
    String gc_content
    String fna
    String out
  }
  command <<<
    magpurify gc-content out \
      ~{mag_purify} \
      ~{gc_content} \
      ~{fna} \
      ~{out} \
      ~{if defined(cut_off) then ("--cutoff " +  '"' + cut_off + '"') else ""} \
      ~{true="--weighted-mean" false="" weighted_mean}
  >>>
  parameter_meta {
    cut_off: ""
    weighted_mean: ""
    mag_purify: ""
    gc_content: ""
    fna: ""
    out: ""
  }
}