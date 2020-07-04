version 1.0

task ClanIndex {
  input {
    Boolean? f
    Boolean? d
    String? reference_file
    String? index_prefix
  }
  command <<<
    clan_index \
      ~{reference_file} \
      ~{index_prefix} \
      ~{true="-f" false="" f} \
      ~{true="-d" false="" d}
  >>>
  parameter_meta {
    f: ""
    d: ""
    reference_file: ""
    index_prefix: ""
  }
}