version 1.0

task Hydrarouter {
  input {
    Boolean? config
    File? routed_list
    Boolean? use_mappings
    String hydra
  }
  command <<<
    hydra_router \
      ~{hydra} \
      ~{if (config) then "-config" else ""} \
      ~{if (routed_list) then "-routedList" else ""} \
      ~{if (use_mappings) then "-useMappings" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/hydra-multi:0.5.4--py27h8b12597_0"
  }
  parameter_meta {
    config: "Configuration file. (req'd)\\nCol 1. Sample Id (string)\\nCol 2. Mapping file (path/file)\\nCol 3. Expected insert size (integer)\\nCol 4. Variance (integer)\\nCol 5. Num. variances (integer)"
    routed_list: "Output file containing the list of routed files (req'd)."
    use_mappings: "Don't count mappings, use the num_mappings fields."
    hydra: ""
  }
  output {
    File out_stdout = stdout()
    File out_routed_list = "${in_routed_list}"
  }
}