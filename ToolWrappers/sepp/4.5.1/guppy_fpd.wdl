version 1.0

task GuppyFpd {
  input {
    Boolean? pp
    Boolean? specify_filename_write
    Boolean? out_dir
    Boolean? prefix
    Boolean? csv
    Boolean? kappa
    Boolean? include_pendant
    Boolean? help
    String fpd
    String place_file
    String? s
  }
  command <<<
    guppy fpd \
      ~{fpd} \
      ~{place_file} \
      ~{s} \
      ~{if (pp) then "--pp" else ""} \
      ~{if (specify_filename_write) then "-o" else ""} \
      ~{if (out_dir) then "--out-dir" else ""} \
      ~{if (prefix) then "--prefix" else ""} \
      ~{if (csv) then "--csv" else ""} \
      ~{if (kappa) then "--kappa" else ""} \
      ~{if (include_pendant) then "--include-pendant" else ""} \
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
    kappa: "A comma-separated list of additional exponents to use for calculating awpd."
    include_pendant: "Consider pendant branch length in diversity calculations."
    help: "Display this list of options"
    fpd: ""
    place_file: ""
    s: ""
  }
  output {
    File out_stdout = stdout()
  }
}