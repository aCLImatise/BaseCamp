version 1.0

task NCRF {
  input {
    Float? min_m_ratio
    Int? max_noise
    Int? minlength
    String? min_score
    String? stats
    Boolean? positional_events
    String cat
    String fast_a
  }
  command <<<
    NCRF \
      ~{cat} \
      ~{fast_a} \
      ~{if defined(min_m_ratio) then ("--minmratio " +  '"' + min_m_ratio + '"') else ""} \
      ~{if defined(max_noise) then ("--maxnoise " +  '"' + max_noise + '"') else ""} \
      ~{if defined(minlength) then ("--minlength " +  '"' + minlength + '"') else ""} \
      ~{if defined(min_score) then ("--minscore " +  '"' + min_score + '"') else ""} \
      ~{if defined(stats) then ("--stats " +  '"' + stats + '"') else ""} \
      ~{if (positional_events) then "--positionalevents" else ""}
  >>>
  parameter_meta {
    min_m_ratio: "discard alignments with a low frequency of matches;\\nratio can be between 0 and 1 (e.g. \\\"0.85\\\"), or can be\\nexpressed as a percentage (e.g. \\\"85%\\\")"
    max_noise: "(same as --minmratio but with 1-ratio)"
    minlength: "discard alignments that don't have long enough repeat\\n(default is 500)"
    min_score: "discard alignments that don't score high enough\\n(default is zero)"
    stats: "show match/mismatch/insert/delete counts"
    positional_events: "show match/mismatch/insert/delete counts by motif\\nposition (independent of --stats=events); this may be\\nuseful for detecting error non-uniformity, to separate\\nperfect repeats from imperfect"
    cat: ""
    fast_a: ""
  }
  output {
    File out_stdout = stdout()
  }
}