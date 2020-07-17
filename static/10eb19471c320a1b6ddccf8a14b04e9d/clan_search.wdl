version 1.0

task ClanSearch {
  input {
    Boolean? r
    Boolean? o
    Boolean? f
    Boolean? d
    String? read_file
    String? output_file
    String? reference_file
    String? index_prefix
  }
  command <<<
    clan_search \
      ~{read_file} \
      ~{output_file} \
      ~{reference_file} \
      ~{index_prefix} \
      ~{true="-r" false="" r} \
      ~{true="-o" false="" o} \
      ~{true="-f" false="" f} \
      ~{true="-d" false="" d}
  >>>
  parameter_meta {
    r: ""
    o: ""
    f: ""
    d: ""
    read_file: ""
    output_file: ""
    reference_file: ""
    index_prefix: ""
  }
}