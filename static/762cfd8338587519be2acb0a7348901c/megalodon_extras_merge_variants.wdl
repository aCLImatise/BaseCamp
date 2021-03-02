version 1.0

task MegalodonExtrasMergeVariants {
  input {
    Directory? output_megalodon_results_dir
    Directory? overwrite
    Boolean? var_locations_on_disk
    String output_dot
  }
  command <<<
    megalodon_extras merge variants \
      ~{output_dot} \
      ~{if defined(output_megalodon_results_dir) then ("--output-megalodon-results-dir " +  '"' + output_megalodon_results_dir + '"') else ""} \
      ~{if (overwrite) then "--overwrite" else ""} \
      ~{if (var_locations_on_disk) then "--var-locations-on-disk" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/megalodon:2.2.10--py38h0213d0e_0"
  }
  parameter_meta {
    output_megalodon_results_dir: "Output directory. Default:\\nmegalodon_merge_vars_results"
    overwrite: "Overwrite output directory if it exists."
    var_locations_on_disk: "Force sequnece variant locations to be stored only\\nwithin on disk database table. This option will reduce\\nthe RAM memory requirement, but may slow processing.\\nDefault: Store positions in memory.\\n"
    output_dot: "optional arguments:"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_megalodon_results_dir = "${in_output_megalodon_results_dir}"
    Directory out_overwrite = "${in_overwrite}"
  }
}