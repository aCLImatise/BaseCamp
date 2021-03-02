version 1.0

task RpprPdprune {
  input {
    Boolean? specify_filename_write
    Boolean? out_dir
    Boolean? prefix
    Boolean? csv
    Boolean? cut_off
    Boolean? leaves
    Boolean? names_only
    Boolean? unsafe
    Boolean? never_prune_from
    Boolean? never_prune_regex_from
    Boolean? help
    String pd_prune
    String tree
  }
  command <<<
    rppr pdprune \
      ~{pd_prune} \
      ~{tree} \
      ~{if (specify_filename_write) then "-o" else ""} \
      ~{if (out_dir) then "--out-dir" else ""} \
      ~{if (prefix) then "--prefix" else ""} \
      ~{if (csv) then "--csv" else ""} \
      ~{if (cut_off) then "--cutoff" else ""} \
      ~{if (leaves) then "--leaves" else ""} \
      ~{if (names_only) then "--names-only" else ""} \
      ~{if (unsafe) then "--unsafe" else ""} \
      ~{if (never_prune_from) then "--never-prune-from" else ""} \
      ~{if (never_prune_regex_from) then "--never-prune-regex-from" else ""} \
      ~{if (help) then "--help" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    specify_filename_write: "Specify the filename to write to."
    out_dir: "Specify the directory to write files to."
    prefix: "Specify a string to be prepended to filenames."
    csv: "Output the results as csv instead of a padded matrix."
    cut_off: "Specify the maximum branch length to be trimmed."
    leaves: "Specify the maximum number of leaves to leave un-trimmed."
    names_only: "Only split out a list of names, rather than names and PD decrease."
    unsafe: "Don't perform internal checks."
    never_prune_from: "Provide a file containing sequence names that will not be pruned."
    never_prune_regex_from: "Provide a file containing regular expressions; sequence names matching one of these will not be pruned."
    help: "Display this list of options"
    pd_prune: ""
    tree: ""
  }
  output {
    File out_stdout = stdout()
  }
}