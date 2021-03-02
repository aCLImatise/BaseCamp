version 1.0

task MergeBreakpointspy {
  input {
    File? hydra_final_file
    File? hydra_detail_file
    File? merged_final_file
    Int? maximum_distance_allowed
    String? i
  }
  command <<<
    mergeBreakpoints_py \
      ~{if defined(hydra_final_file) then ("-f " +  '"' + hydra_final_file + '"') else ""} \
      ~{if defined(hydra_detail_file) then ("-d " +  '"' + hydra_detail_file + '"') else ""} \
      ~{if defined(merged_final_file) then ("-o " +  '"' + merged_final_file + '"') else ""} \
      ~{if defined(maximum_distance_allowed) then ("-s " +  '"' + maximum_distance_allowed + '"') else ""} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/hydra-multi:0.5.4--py27h8b12597_0"
  }
  parameter_meta {
    hydra_final_file: "Hydra .final file"
    hydra_detail_file: "Hydra .detail file"
    merged_final_file: "Merged final file"
    maximum_distance_allowed: "Maximum distance allowed for two flanking breakpoints to be\\nmerged.\\n"
    i: ""
  }
  output {
    File out_stdout = stdout()
  }
}