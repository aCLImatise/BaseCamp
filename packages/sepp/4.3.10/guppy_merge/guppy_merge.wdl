version 1.0

task GuppyMerge {
  input {
    Boolean? specify_filename_write
    Boolean? out_dir
    Boolean? prefix
    File? split_csv
    Boolean? help
    String merge
    String place_files
  }
  command <<<
    guppy merge \
      ~{merge} \
      ~{place_files} \
      ~{if (specify_filename_write) then "-o" else ""} \
      ~{if (out_dir) then "--out-dir" else ""} \
      ~{if (prefix) then "--prefix" else ""} \
      ~{if (split_csv) then "--split-csv" else ""} \
      ~{if (help) then "--help" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    specify_filename_write: "Specify the filename to write to."
    out_dir: "Specify the directory to write files to."
    prefix: "Specify a string to be prepended to filenames."
    split_csv: "Write out a csv file indicating the source of each read in the combined placefile."
    help: "Display this list of options"
    merge: ""
    place_files: ""
  }
  output {
    File out_stdout = stdout()
    File out_split_csv = "${in_split_csv}"
  }
}