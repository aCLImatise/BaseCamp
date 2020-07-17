version 1.0

task Indexer {
  input {
    Boolean? skip_skip_junk
    Boolean? tail_tail_pattern
    Boolean? included_tail_pattern
    Boolean? pattern_i_pattern
    Boolean? multiple_indices_entry
    Boolean? idlength_maximum_length
    Boolean? lp
    Boolean? ll
  }
  command <<<
    indexer \
      ~{true="-s" false="" skip_skip_junk} \
      ~{true="-t" false="" tail_tail_pattern} \
      ~{true="-i" false="" included_tail_pattern} \
      ~{true="-p" false="" pattern_i_pattern} \
      ~{true="-m" false="" multiple_indices_entry} \
      ~{true="-l" false="" idlength_maximum_length} \
      ~{true="-lp" false="" lp} \
      ~{true="-ll" false="" ll}
  >>>
  parameter_meta {
    skip_skip_junk: "|skip      skip junk [1]"
    tail_tail_pattern: "|tail      tail pattern [^>]"
    included_tail_pattern: "|included  tail pattern is part of entry [0]"
    pattern_i_pattern: "|pattern   id selection pattern [^>[^|]+\|([^\s|;]+)]"
    multiple_indices_entry: "multiple indices per entry [0]"
    idlength_maximum_length: "|idLength  maximum id length [14]"
    lp: "maximum position length [10]"
    ll: "maximum size length [6]"
  }
}