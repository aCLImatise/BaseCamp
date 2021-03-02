version 1.0

task GuppyIslands {
  input {
    Boolean? specify_filename_write
    Boolean? out_dir
    Boolean? prefix
    Boolean? pp
    Boolean? discard_below
    Boolean? help
    String islands
    String place_file
    String? s
  }
  command <<<
    guppy islands \
      ~{islands} \
      ~{place_file} \
      ~{s} \
      ~{if (specify_filename_write) then "-o" else ""} \
      ~{if (out_dir) then "--out-dir" else ""} \
      ~{if (prefix) then "--prefix" else ""} \
      ~{if (pp) then "--pp" else ""} \
      ~{if (discard_below) then "--discard-below" else ""} \
      ~{if (help) then "--help" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    specify_filename_write: "Specify the filename to write to."
    out_dir: "Specify the directory to write files to."
    prefix: "Specify a string to be prepended to filenames."
    pp: "Use posterior probability for the weight."
    discard_below: "Ignore pquery locations with a mass less than the specified value."
    help: "Display this list of options"
    islands: ""
    place_file: ""
    s: ""
  }
  output {
    File out_stdout = stdout()
  }
}