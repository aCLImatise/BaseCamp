version 1.0

task RpprMinAdcl {
  input {
    Boolean? point_mass
    Boolean? pp
    Boolean? reference_package_path
    Boolean? specify_filename_write
    Boolean? out_dir
    Boolean? prefix
    Boolean? no_csv
    Boolean? node_numbers
    Boolean? seed
    Boolean? specified_write_output
    Boolean? specified_path_write
    Boolean? leaves
    Boolean? max_a_dcl
    Boolean? algorithm
    File? all_ad_cls_file
    File? log
    Boolean? always_include
    Boolean? leaf_mass
    Boolean? help
    String min_a_dcl
    String place_file
  }
  command <<<
    rppr min_adcl \
      ~{min_a_dcl} \
      ~{place_file} \
      ~{if (point_mass) then "--point-mass" else ""} \
      ~{if (pp) then "--pp" else ""} \
      ~{if (reference_package_path) then "-c" else ""} \
      ~{if (specify_filename_write) then "-o" else ""} \
      ~{if (out_dir) then "--out-dir" else ""} \
      ~{if (prefix) then "--prefix" else ""} \
      ~{if (no_csv) then "--no-csv" else ""} \
      ~{if (node_numbers) then "--node-numbers" else ""} \
      ~{if (seed) then "--seed" else ""} \
      ~{if (specified_write_output) then "-v" else ""} \
      ~{if (specified_path_write) then "-t" else ""} \
      ~{if (leaves) then "--leaves" else ""} \
      ~{if (max_a_dcl) then "--max-adcl" else ""} \
      ~{if (algorithm) then "--algorithm" else ""} \
      ~{if (all_ad_cls_file) then "--all-adcls-file" else ""} \
      ~{if (log) then "--log" else ""} \
      ~{if (always_include) then "--always-include" else ""} \
      ~{if (leaf_mass) then "--leaf-mass" else ""} \
      ~{if (help) then "--help" else ""}
  >>>
  parameter_meta {
    point_mass: "Treat every pquery as a point mass concentrated on the highest-weight placement."
    pp: "Use posterior probability for the weight."
    reference_package_path: "Reference package path."
    specify_filename_write: "Specify the filename to write to."
    out_dir: "Specify the directory to write files to."
    prefix: "Specify a string to be prepended to filenames."
    no_csv: "Output the results as a padded matrix instead of csv."
    node_numbers: "Put the node numbers in where the bootstraps usually go."
    seed: "Set the random seed, an integer > 0. Default is 1."
    specified_write_output: "If specified, write progress output to stderr."
    specified_path_write: "If specified, the path to write the trimmed tree to."
    leaves: "The maximum number of leaves to keep in the tree."
    max_a_dcl: "The maximum ADCL that a solution can have."
    algorithm: "Which algorithm to use to prune leaves. Choices are 'greedy', 'full', 'force', and 'pam'. Default full."
    all_ad_cls_file: "If specified, write out a csv file containing every intermediate computed ADCL."
    log: "If specified with the full algorithm, write out a csv file containing solutions at every internal node."
    always_include: "If specified, the leaf names read from the provided file will not be trimmed."
    leaf_mass: "Fraction of mass to be distributed uniformly across leaves. Default 0."
    help: "Display this list of options"
    min_a_dcl: ""
    place_file: ""
  }
  output {
    File out_stdout = stdout()
    File out_all_ad_cls_file = "${in_all_ad_cls_file}"
    File out_log = "${in_log}"
  }
}