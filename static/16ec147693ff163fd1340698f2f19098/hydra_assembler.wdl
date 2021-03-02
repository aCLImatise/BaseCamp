version 1.0

task Hydraassembler {
  input {
    Boolean? config
    Boolean? routed
    Boolean? max_mappings
    Boolean? crumbs
    String? out
    String hydra
  }
  command <<<
    hydra_assembler \
      ~{hydra} \
      ~{if (config) then "-config" else ""} \
      ~{if (routed) then "-routed" else ""} \
      ~{if (max_mappings) then "-maxMappings" else ""} \
      ~{if (crumbs) then "--crumbs" else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/hydra-multi:0.5.4--py27h8b12597_0"
  }
  parameter_meta {
    config: "Configuration file.\\nCol 1. Sample Id (string)\\nCol 2. Mapping file (path/file)\\nCol 3. Expected insert size (integer)\\nCol 4. Variance (integer)\\nCol 5. Num. variances (integer)"
    routed: "A single routed chr/chr/strand/strand file from HydraRouter."
    max_mappings: "Maximum number of mappings in a cluster before Hydra will \\\"punt\\\"."
    crumbs: "Hydra will leave temporary files."
    out: ""
    hydra: ""
  }
  output {
    File out_stdout = stdout()
  }
}