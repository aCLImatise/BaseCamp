version 1.0

task GuppyError {
  input {
    Boolean? pp
    Boolean? specify_filename_write
    Boolean? out_dir
    Boolean? prefix
    Boolean? csv
    Boolean? include_pendant
    Boolean? scale_experimental_bl
    Boolean? help
    String error
    String experimental_dot_j_place
    String expected_dot_j_place
  }
  command <<<
    guppy error \
      ~{error} \
      ~{experimental_dot_j_place} \
      ~{expected_dot_j_place} \
      ~{if (pp) then "--pp" else ""} \
      ~{if (specify_filename_write) then "-o" else ""} \
      ~{if (out_dir) then "--out-dir" else ""} \
      ~{if (prefix) then "--prefix" else ""} \
      ~{if (csv) then "--csv" else ""} \
      ~{if (include_pendant) then "--include-pendant" else ""} \
      ~{if (scale_experimental_bl) then "--scale-experimental-bl" else ""} \
      ~{if (help) then "--help" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/sepp:v4.5.0--py37_0"
  }
  parameter_meta {
    pp: "Use posterior probability for the weight."
    specify_filename_write: "Specify the filename to write to."
    out_dir: "Specify the directory to write files to."
    prefix: "Specify a string to be prepended to filenames."
    csv: "Output the results as csv instead of a padded matrix."
    include_pendant: "Include pendant branch lengths in distance calculations."
    scale_experimental_bl: "Scale the branch lengths in the experimental jplace file."
    help: "Display this list of options"
    error: ""
    experimental_dot_j_place: ""
    expected_dot_j_place: ""
  }
  output {
    File out_stdout = stdout()
  }
}