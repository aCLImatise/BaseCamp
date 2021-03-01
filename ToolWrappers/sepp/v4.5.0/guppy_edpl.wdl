version 1.0

task GuppyEdpl {
  input {
    Boolean? specify_filename_write
    Boolean? out_dir
    Boolean? prefix
    Boolean? csv
    Boolean? pp
    Boolean? first_only
    Boolean? help
    String ed_pl
    String place_file
  }
  command <<<
    guppy edpl \
      ~{ed_pl} \
      ~{place_file} \
      ~{if (specify_filename_write) then "-o" else ""} \
      ~{if (out_dir) then "--out-dir" else ""} \
      ~{if (prefix) then "--prefix" else ""} \
      ~{if (csv) then "--csv" else ""} \
      ~{if (pp) then "--pp" else ""} \
      ~{if (first_only) then "--first-only" else ""} \
      ~{if (help) then "--help" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/sepp:v4.5.0--py37_0"
  }
  parameter_meta {
    specify_filename_write: "Specify the filename to write to."
    out_dir: "Specify the directory to write files to."
    prefix: "Specify a string to be prepended to filenames."
    csv: "Output the results as csv instead of a padded matrix."
    pp: "Use posterior probability for the weight."
    first_only: "Only print the first name for each pquery."
    help: "Display this list of options"
    ed_pl: ""
    place_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}