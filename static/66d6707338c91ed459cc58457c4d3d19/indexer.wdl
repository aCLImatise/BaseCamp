version 1.0

task Indexer {
  input {
    Boolean? skip_skip_junk
    Boolean? tail_tail_pattern
    Boolean? included_tail_pattern
    Boolean? pattern_d_pattern
    Boolean? multiple_indices_entry
    Boolean? idlength_maximum_i
    Boolean? lp
    Boolean? ll
  }
  command <<<
    indexer \
      ~{if (skip_skip_junk) then "-s" else ""} \
      ~{if (tail_tail_pattern) then "-t" else ""} \
      ~{if (included_tail_pattern) then "-i" else ""} \
      ~{if (pattern_d_pattern) then "-p" else ""} \
      ~{if (multiple_indices_entry) then "-m" else ""} \
      ~{if (idlength_maximum_i) then "-l" else ""} \
      ~{if (lp) then "-lp" else ""} \
      ~{if (ll) then "-ll" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    skip_skip_junk: "|skip      skip junk [1]"
    tail_tail_pattern: "|tail      tail pattern [^>]"
    included_tail_pattern: "|included  tail pattern is part of entry [0]"
    pattern_d_pattern: "|pattern   id selection pattern [^>[^|]+\\|([^\\s|;]+)]"
    multiple_indices_entry: "multiple indices per entry [0]"
    idlength_maximum_i: "|idLength  maximum id length [14]"
    lp: "maximum position length [10]"
    ll: "maximum size length [6]"
  }
  output {
    File out_stdout = stdout()
  }
}