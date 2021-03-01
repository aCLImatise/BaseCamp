version 1.0

task GuppyUnifrac {
  input {
    Boolean? point_mass
    Boolean? pp
    Boolean? specify_filename_write
    Boolean? out_dir
    Boolean? prefix
    Boolean? csv
    Boolean? list_out
    Boolean? help
    String uni_frac
    Int one_dot_j_place
    Int two_dot_j_place
  }
  command <<<
    guppy unifrac \
      ~{uni_frac} \
      ~{one_dot_j_place} \
      ~{two_dot_j_place} \
      ~{if (point_mass) then "--point-mass" else ""} \
      ~{if (pp) then "--pp" else ""} \
      ~{if (specify_filename_write) then "-o" else ""} \
      ~{if (out_dir) then "--out-dir" else ""} \
      ~{if (prefix) then "--prefix" else ""} \
      ~{if (csv) then "--csv" else ""} \
      ~{if (list_out) then "--list-out" else ""} \
      ~{if (help) then "--help" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    point_mass: "Treat every pquery as a point mass concentrated on the highest-weight placement."
    pp: "Use posterior probability for the weight."
    specify_filename_write: "Specify the filename to write to."
    out_dir: "Specify the directory to write files to."
    prefix: "Specify a string to be prepended to filenames."
    csv: "Output the results as csv instead of a padded matrix."
    list_out: "Output the KR results as a list rather than a matrix."
    help: "Display this list of options"
    uni_frac: ""
    one_dot_j_place: ""
    two_dot_j_place: ""
  }
  output {
    File out_stdout = stdout()
  }
}