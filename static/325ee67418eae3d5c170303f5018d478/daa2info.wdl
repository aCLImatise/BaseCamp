version 1.0

task Daa2info {
  input {
    Boolean? in
    File? out
    Boolean? list_more
    Boolean? class_two_count
    Boolean? read_two_class
    Boolean? names
    Boolean? paths
    Boolean? prefix_rank
    Boolean? major_ranks_only
    Boolean? bacteria_only
    Boolean? virus_only
    Boolean? ignore_unassigned
    File? extract_summary_file
    Boolean? verbose
    String commands
  }
  command <<<
    daa2info \
      ~{commands} \
      ~{if (in) then "--in" else ""} \
      ~{if (out) then "--out" else ""} \
      ~{if (list_more) then "--listMore" else ""} \
      ~{if (class_two_count) then "--class2count" else ""} \
      ~{if (read_two_class) then "--read2class" else ""} \
      ~{if (names) then "--names" else ""} \
      ~{if (paths) then "--paths" else ""} \
      ~{if (prefix_rank) then "--prefixRank" else ""} \
      ~{if (major_ranks_only) then "--majorRanksOnly" else ""} \
      ~{if (bacteria_only) then "--bacteriaOnly" else ""} \
      ~{if (virus_only) then "--virusOnly" else ""} \
      ~{if (ignore_unassigned) then "--ignoreUnassigned" else ""} \
      ~{if (extract_summary_file) then "--extractSummaryFile" else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/megan:6.21.2--h9ee0642_0"
  }
  parameter_meta {
    in: "[string]                    Input DAA file. Mandatory option."
    out: "[string]                   Output file (stdout or .gz ok). Default value: stdout"
    list_more: "List more info about file (if meganized). Default value: false."
    class_two_count: "[string(s)]      List class to count for named classification(s) (Possible values: EC EGGNOG GTDB INTERPRO2GO KEGG SEED Taxonomy)."
    read_two_class: "[string(s)]       List read to class assignments for named classification(s) (Possible values: EC EGGNOG GTDB INTERPRO2GO KEGG SEED Taxonomy)."
    names: "Report class names rather than class Id numbers. Default value: false."
    paths: "Report class paths rather than class Id numbers. Default value: false."
    prefix_rank: "When reporting class paths for taxonomy, prefix single letter to indicate taxonomic rank. Default value: false."
    major_ranks_only: "Only use major taxonomic ranks. Default value: false."
    bacteria_only: "Only report bacterial reads and counts in taxonomic report. Default value: false."
    virus_only: "Only report viral reads and counts in taxonomic report. Default value: false."
    ignore_unassigned: "Don't report on reads that are unassigned. Default value: true."
    extract_summary_file: "[string]   Output a MEGAN summary file (contains all classifications, but no reads or alignments)."
    verbose: "Echo commandline options and be verbose. Default value: false."
    commands: "-l, --list                           List general info about file. Default value: false."
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
    File out_extract_summary_file = "${in_extract_summary_file}"
  }
}