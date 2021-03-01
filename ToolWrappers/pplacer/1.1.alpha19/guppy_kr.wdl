version 1.0

task GuppyKr {
  input {
    Boolean? point_mass
    Boolean? pp
    Boolean? reference_package_path
    Boolean? specify_filename_write
    Boolean? out_dir
    Boolean? prefix
    Boolean? exponent_kr_value
    Boolean? normalize
    Boolean? seed
    Boolean? list_out
    Boolean? density
    Boolean? set_samples_use
    Boolean? gaussian
    Boolean? help
    String kr
    String place_files
  }
  command <<<
    guppy kr \
      ~{kr} \
      ~{place_files} \
      ~{if (point_mass) then "--point-mass" else ""} \
      ~{if (pp) then "--pp" else ""} \
      ~{if (reference_package_path) then "-c" else ""} \
      ~{if (specify_filename_write) then "-o" else ""} \
      ~{if (out_dir) then "--out-dir" else ""} \
      ~{if (prefix) then "--prefix" else ""} \
      ~{if (exponent_kr_value) then "-p" else ""} \
      ~{if (normalize) then "--normalize" else ""} \
      ~{if (seed) then "--seed" else ""} \
      ~{if (list_out) then "--list-out" else ""} \
      ~{if (density) then "--density" else ""} \
      ~{if (set_samples_use) then "-s" else ""} \
      ~{if (gaussian) then "--gaussian" else ""} \
      ~{if (help) then "--help" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    point_mass: "Treat every pquery as a point mass concentrated on the highest-weight placement."
    pp: "Use posterior probability for the weight."
    reference_package_path: "Reference package path."
    specify_filename_write: "Specify the filename to write to."
    out_dir: "Specify the directory to write files to."
    prefix: "Specify a string to be prepended to filenames."
    exponent_kr_value: "Exponent for KR integration, i.e. value of p in Z_p. Default 1."
    normalize: "Divide KR by a given value. Legal arguments are \\\"tree-length\\\"."
    seed: "Set the random seed, an integer > 0. Default is 1."
    list_out: "Output the KR results as a list rather than a matrix."
    density: "Make density plots showing the distribution of randomized values with the calculated values"
    set_samples_use: "Set how many samples to use for significance calculation (0 means calculate distance only). Default is 0."
    gaussian: "Use the Gaussian process approximation for p-value estimation"
    help: "Display this list of options"
    kr: ""
    place_files: ""
  }
  output {
    File out_stdout = stdout()
  }
}