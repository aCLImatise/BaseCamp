version 1.0

task GuppyRedup {
  input {
    Boolean? specify_filename_write
    Boolean? out_dir
    Boolean? prefix
    Boolean? dedup_file_use
    Boolean? specified_redup_list
    Boolean? help
    String red_up
    String place_file
  }
  command <<<
    guppy redup \
      ~{red_up} \
      ~{place_file} \
      ~{if (specify_filename_write) then "-o" else ""} \
      ~{if (out_dir) then "--out-dir" else ""} \
      ~{if (prefix) then "--prefix" else ""} \
      ~{if (dedup_file_use) then "-d" else ""} \
      ~{if (specified_redup_list) then "-m" else ""} \
      ~{if (help) then "--help" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    specify_filename_write: "Specify the filename to write to."
    out_dir: "Specify the directory to write files to."
    prefix: "Specify a string to be prepended to filenames."
    dedup_file_use: "The dedup file to use to restore duplicates."
    specified_redup_list: "If specified, redup with counts instead of a name list."
    help: "Display this list of options"
    red_up: ""
    place_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}