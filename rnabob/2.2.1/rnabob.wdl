version 1.0

task Rnabob {
  input {
    Boolean? search_strands_database
    Boolean? quiet_suppress_verbose
    Boolean? skip_disallow_overlapping
    Boolean? fancy_show_alignments
    Boolean? options
    String descriptor_file
    String sequence_file
  }
  command <<<
    rnabob \
      ~{descriptor_file} \
      ~{sequence_file} \
      ~{true="-c" false="" search_strands_database} \
      ~{true="-q" false="" quiet_suppress_verbose} \
      ~{true="-s" false="" skip_disallow_overlapping} \
      ~{true="-F" false="" fancy_show_alignments} \
      ~{true="-options" false="" options}
  >>>
  parameter_meta {
    search_strands_database: ":    search both strands of database"
    quiet_suppress_verbose: ":    quiet: suppress verbose banner and headers"
    skip_disallow_overlapping: ":    skip mode: disallow overlapping matches"
    fancy_show_alignments: ":    fancy: show full alignments to pattern"
    options: ""
    descriptor_file: ""
    sequence_file: ""
  }
}