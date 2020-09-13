version 1.0

task RpprInfer {
  input {
    Boolean? reference_package_path
    Boolean? specify_filename_write
    Boolean? out_dir
    Boolean? prefix
    Boolean? csv
    Boolean? number_run_pplacer
    Boolean? calculate_posterior_probabilities
    Boolean? place_file
    Boolean? help
    String infer
  }
  command <<<
    rppr infer \
      ~{infer} \
      ~{if (reference_package_path) then "-c" else ""} \
      ~{if (specify_filename_write) then "-o" else ""} \
      ~{if (out_dir) then "--out-dir" else ""} \
      ~{if (prefix) then "--prefix" else ""} \
      ~{if (csv) then "--csv" else ""} \
      ~{if (number_run_pplacer) then "-j" else ""} \
      ~{if (calculate_posterior_probabilities) then "-p" else ""} \
      ~{if (place_file) then "--placefile" else ""} \
      ~{if (help) then "--help" else ""}
  >>>
  parameter_meta {
    reference_package_path: "Reference package path. Required."
    specify_filename_write: "Specify the filename to write to."
    out_dir: "Specify the directory to write files to."
    prefix: "Specify a string to be prepended to filenames."
    csv: "Output the results as csv instead of a padded matrix."
    number_run_pplacer: "The number of processes to run pplacer with. default: 2"
    calculate_posterior_probabilities: "Calculate posterior probabilities when doing placements."
    place_file: "Save the placefile generated by running pplacer to the specified location."
    help: "Display this list of options"
    infer: ""
  }
  output {
    File out_stdout = stdout()
  }
}