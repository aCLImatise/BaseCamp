version 1.0

task ClanOutput {
  input {
    Boolean? i
    Boolean? o
    Boolean? f
    Boolean? r
    String? clan_file
    String? output_file
    String? reference_file
    String? read_file
  }
  command <<<
    clan_output \
      ~{clan_file} \
      ~{output_file} \
      ~{reference_file} \
      ~{read_file} \
      ~{true="-i" false="" i} \
      ~{true="-o" false="" o} \
      ~{true="-f" false="" f} \
      ~{true="-r" false="" r}
  >>>
  parameter_meta {
    i: ""
    o: ""
    f: ""
    r: ""
    clan_file: ""
    output_file: ""
    reference_file: ""
    read_file: ""
  }
}