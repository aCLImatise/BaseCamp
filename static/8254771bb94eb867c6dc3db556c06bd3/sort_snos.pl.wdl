version 1.0

task Sortsnospl {
  input {
    Boolean? sort_snos_position_hit
    Boolean? sort_snos_position_remove
    Boolean? same_r_only
    Boolean? sort_snos_mapped
    Boolean? sort_snos_unmapped
    Int? sort_snos_output
    String? sort_snos_require
    Int? sort_snos_include
    String? extract_only_snos
    Boolean? sort__output
    Boolean? more_options
    Boolean? options
    File snorna_hits_file
  }
  command <<<
    sort_snos_pl \
      ~{snorna_hits_file} \
      ~{if (sort_snos_position_hit) then "-H" else ""} \
      ~{if (sort_snos_position_remove) then "-R" else ""} \
      ~{if (same_r_only) then "-r" else ""} \
      ~{if (sort_snos_mapped) then "-M" else ""} \
      ~{if (sort_snos_unmapped) then "-U" else ""} \
      ~{if defined(sort_snos_output) then ("-T " +  '"' + sort_snos_output + '"') else ""} \
      ~{if defined(sort_snos_require) then ("-S " +  '"' + sort_snos_require + '"') else ""} \
      ~{if defined(sort_snos_include) then ("-m " +  '"' + sort_snos_include + '"') else ""} \
      ~{if defined(extract_only_snos) then ("-e " +  '"' + extract_only_snos + '"') else ""} \
      ~{if (sort__output) then "-F" else ""} \
      ~{if (more_options) then "-MORE_OPTIONS" else ""} \
      ~{if (options) then "-OPTIONS" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    sort_snos_position_hit: ":  sort snos by position of hit in query sequence"
    sort_snos_position_remove: ":  sort snos by position & Remove lower-scoring duplicate hits\\n(both start & end bounds must match"
    same_r_only: ":  same as -R, but only start bound must match to count as duplicate"
    sort_snos_mapped: ":  sort snos, output only hits to Mapped sites"
    sort_snos_unmapped: ":  sort snos, output only hits to Unmapped sites"
    sort_snos_output: ":  sort snos, output only top <int> hits per meth site (def=50)"
    sort_snos_require: ":  sort snos, require minimum score"
    sort_snos_include: ":  sort snos, don't include hits _over_ max <score>"
    extract_only_snos: ":  Extract only snos with <expr> in header line"
    sort__output: ":  Don't sort -- just filter & output in same order"
    more_options: ""
    options: ""
    snorna_hits_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}