version 1.0

task GuppyRarefy {
  input {
    Boolean? specify_filename_write
    Boolean? out_dir
    Boolean? prefix
    Boolean? seed
    Boolean? number_pqueries_keep
    Boolean? weight_as_count
    Boolean? help
    String rare_fy
    String place_file
  }
  command <<<
    guppy rarefy \
      ~{rare_fy} \
      ~{place_file} \
      ~{if (specify_filename_write) then "-o" else ""} \
      ~{if (out_dir) then "--out-dir" else ""} \
      ~{if (prefix) then "--prefix" else ""} \
      ~{if (seed) then "--seed" else ""} \
      ~{if (number_pqueries_keep) then "-n" else ""} \
      ~{if (weight_as_count) then "--weight-as-count" else ""} \
      ~{if (help) then "--help" else ""}
  >>>
  parameter_meta {
    specify_filename_write: "Specify the filename to write to."
    out_dir: "Specify the directory to write files to."
    prefix: "Specify a string to be prepended to filenames."
    seed: "Set the random seed, an integer > 0. Default is 1."
    number_pqueries_keep: "The number of pqueries to keep per placefile."
    weight_as_count: "Interpret (integer) weights on pqueries as counts and sample without replacement."
    help: "Display this list of options"
    rare_fy: ""
    place_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}