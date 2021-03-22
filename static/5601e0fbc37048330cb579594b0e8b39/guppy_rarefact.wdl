version 1.0

task GuppyRarefact {
  input {
    Boolean? pp
    Boolean? specify_filename_write
    Boolean? out_dir
    Boolean? prefix
    Boolean? csv
    Boolean? help
    String rare_fact
    String place_file
  }
  command <<<
    guppy rarefact \
      ~{rare_fact} \
      ~{place_file} \
      ~{if (pp) then "--pp" else ""} \
      ~{if (specify_filename_write) then "-o" else ""} \
      ~{if (out_dir) then "--out-dir" else ""} \
      ~{if (prefix) then "--prefix" else ""} \
      ~{if (csv) then "--csv" else ""} \
      ~{if (help) then "--help" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/sepp:4.5.1--py37_0"
  }
  parameter_meta {
    pp: "Use posterior probability for the weight."
    specify_filename_write: "Specify the filename to write to."
    out_dir: "Specify the directory to write files to."
    prefix: "Specify a string to be prepended to filenames."
    csv: "Output the results as csv instead of a padded matrix."
    help: "Display this list of options"
    rare_fact: ""
    place_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}