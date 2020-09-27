version 1.0

task GuppyMcl {
  input {
    Boolean? specify_filename_write
    Boolean? out_dir
    Boolean? prefix
    Boolean? csv
    Boolean? pp
    Boolean? inflation
    Boolean? help
    String mcl
    String place_file
  }
  command <<<
    guppy mcl \
      ~{mcl} \
      ~{place_file} \
      ~{if (specify_filename_write) then "-o" else ""} \
      ~{if (out_dir) then "--out-dir" else ""} \
      ~{if (prefix) then "--prefix" else ""} \
      ~{if (csv) then "--csv" else ""} \
      ~{if (pp) then "--pp" else ""} \
      ~{if (inflation) then "--inflation" else ""} \
      ~{if (help) then "--help" else ""}
  >>>
  parameter_meta {
    specify_filename_write: "Specify the filename to write to."
    out_dir: "Specify the directory to write files to."
    prefix: "Specify a string to be prepended to filenames."
    csv: "Output the results as csv instead of a padded matrix."
    pp: "Use posterior probability for the weight."
    inflation: "If specified, pass this as the inflation value to MCL."
    help: "Display this list of options"
    mcl: ""
    place_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}