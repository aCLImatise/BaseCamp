version 1.0

task ComputeCoverageStat {
  input {
    File? mandatory_path_g
    File? mandatory_path_t
    Int? optional_assume_s
    String? recommended_prefix_output
    Boolean? update_tigstore_default
    Boolean? estimate_based_n
    Boolean? leniant_require_start
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
      ~{if (estimate_based_n) then "-u" else ""} \
      ~{if (leniant_require_start) then "-L" else ""}
  >>>
  parameter_meta {
    mandatory_path_g: "Mandatory, path G to a gkpStore directory."
    mandatory_path_t: "<v> Mandatory, path T to a tigStore, and version V."
    optional_assume_s: "Optional, assume genome size S."
    recommended_prefix_output: "Recommended, prefix for output files."
    update_tigstore_default: "Do not update the tigStore (default = do update)."
    estimate_based_n: "Do not estimate based on N50 (default = use N50)."
    leniant_require_start: "Be leniant; don't require reads start at position zero."
    version: ""
  }
  output {
    File out_stdout = stdout()
  }
}