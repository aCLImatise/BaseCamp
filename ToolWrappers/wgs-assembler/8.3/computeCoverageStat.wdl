version 1.0

task ComputeCoverageStat {
  input {
    File? mandatory_path_g
    File? mandatory_path_t
    Int? optional_assume_s
    String? recommended_prefix_output
    Boolean? update_tigstore_default
    Boolean? estimate_based_use
    Boolean? be_leniant_require
    String version
  }
  command <<<
    computeCoverageStat \
      ~{version} \
      ~{if defined(mandatory_path_g) then ("-g " +  '"' + mandatory_path_g + '"') else ""} \
      ~{if defined(mandatory_path_t) then ("-t " +  '"' + mandatory_path_t + '"') else ""} \
      ~{if defined(optional_assume_s) then ("-s " +  '"' + optional_assume_s + '"') else ""} \
      ~{if defined(recommended_prefix_output) then ("-o " +  '"' + recommended_prefix_output + '"') else ""} \
      ~{if (update_tigstore_default) then "-n" else ""} \
      ~{if (estimate_based_use) then "-u" else ""} \
      ~{if (be_leniant_require) then "-L" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    mandatory_path_g: "Mandatory, path G to a gkpStore directory."
    mandatory_path_t: "<v> Mandatory, path T to a tigStore, and version V."
    optional_assume_s: "Optional, assume genome size S."
    recommended_prefix_output: "Recommended, prefix for output files."
    update_tigstore_default: "Do not update the tigStore (default = do update)."
    estimate_based_use: "Do not estimate based on N50 (default = use N50)."
    be_leniant_require: "Be leniant; don't require reads start at position zero."
    version: ""
  }
  output {
    File out_stdout = stdout()
  }
}