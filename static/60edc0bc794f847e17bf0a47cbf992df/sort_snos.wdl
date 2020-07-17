version 1.0

task SortSnos.pl {
  input {
    Boolean? sort_snos_position_hit
    Boolean? sort_snos_position_remove
    Boolean? same_start_match
    Boolean? sort_snos_mapped
    Boolean? sort_snos_unmapped
    Int? sort_snos_output
    String? sort_snos_require
    String? sort_snos_include
    String? extract_only_snos
    Boolean? sort__output
    Boolean? options
    Boolean? more_options
  }
  command <<<
    sort-snos.pl \
      ~{true="-H" false="" sort_snos_position_hit} \
      ~{true="-R" false="" sort_snos_position_remove} \
      ~{true="-r" false="" same_start_match} \
      ~{true="-M" false="" sort_snos_mapped} \
      ~{true="-U" false="" sort_snos_unmapped} \
      ~{if defined(sort_snos_output) then ("-T " +  '"' + sort_snos_output + '"') else ""} \
      ~{if defined(sort_snos_require) then ("-S " +  '"' + sort_snos_require + '"') else ""} \
      ~{if defined(sort_snos_include) then ("-m " +  '"' + sort_snos_include + '"') else ""} \
      ~{if defined(extract_only_snos) then ("-e " +  '"' + extract_only_snos + '"') else ""} \
      ~{true="-F" false="" sort__output} \
      ~{true="-OPTIONS" false="" options} \
      ~{true="-MORE_OPTIONS" false="" more_options}
  >>>
  parameter_meta {
    sort_snos_position_hit: ":  sort snos by position of hit in query sequence"
    sort_snos_position_remove: ":  sort snos by position & Remove lower-scoring duplicate hits (both start & end bounds must match"
    same_start_match: ":  same as -R, but only start bound must match to count as duplicate"
    sort_snos_mapped: ":  sort snos, output only hits to Mapped sites"
    sort_snos_unmapped: ":  sort snos, output only hits to Unmapped sites"
    sort_snos_output: ":  sort snos, output only top <int> hits per meth site (def=50)"
    sort_snos_require: ":  sort snos, require minimum score"
    sort_snos_include: ":  sort snos, don't include hits _over_ max <score>"
    extract_only_snos: ":  Extract only snos with <expr> in header line"
    sort__output: ":  Don't sort -- just filter & output in same order"
    options: ""
    more_options: ""
  }
}