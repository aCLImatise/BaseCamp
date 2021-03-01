version 1.0

task RpprInfo {
  input {
    Boolean? reference_package_path
    Boolean? specify_filename_write
    Boolean? out_dir
    Boolean? prefix
    Boolean? csv
    Boolean? taxonomic
    Boolean? help
    String info
  }
  command <<<
    rppr info \
      ~{info} \
      ~{if (reference_package_path) then "-c" else ""} \
      ~{if (specify_filename_write) then "-o" else ""} \
      ~{if (out_dir) then "--out-dir" else ""} \
      ~{if (prefix) then "--prefix" else ""} \
      ~{if (csv) then "--csv" else ""} \
      ~{if (taxonomic) then "--taxonomic" else ""} \
      ~{if (help) then "--help" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    reference_package_path: "Reference package path. Required."
    specify_filename_write: "Specify the filename to write to."
    out_dir: "Specify the directory to write files to."
    prefix: "Specify a string to be prepended to filenames."
    csv: "Output the results as csv instead of a padded matrix."
    taxonomic: "Show by-rank taxonomic information"
    help: "Display this list of options"
    info: ""
  }
  output {
    File out_stdout = stdout()
  }
}