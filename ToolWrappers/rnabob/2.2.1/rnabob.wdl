version 1.0

task Rnabob {
  input {
    Boolean? search_strands_database
    Boolean? quiet_suppress_verbose
    Boolean? skip_mode_matches
    Boolean? fancy_show_alignments
    Boolean? options
    File descriptor_file
    File sequence_file
  }
  command <<<
    rnabob \
      ~{descriptor_file} \
      ~{sequence_file} \
      ~{if (search_strands_database) then "-c" else ""} \
      ~{if (quiet_suppress_verbose) then "-q" else ""} \
      ~{if (skip_mode_matches) then "-s" else ""} \
      ~{if (fancy_show_alignments) then "-F" else ""} \
      ~{if (options) then "-options" else ""}
  >>>
  parameter_meta {
    search_strands_database: ":    search both strands of database"
    quiet_suppress_verbose: ":    quiet: suppress verbose banner and headers"
    skip_mode_matches: ":    skip mode: disallow overlapping matches"
    fancy_show_alignments: ":    fancy: show full alignments to pattern"
    options: ""
    descriptor_file: ""
    sequence_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}