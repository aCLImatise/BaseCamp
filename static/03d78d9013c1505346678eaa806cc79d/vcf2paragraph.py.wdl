version 1.0

task Vcf2paragraphpy {
  input {
    String? reference_sequence
    Boolean? verbose
    String? graph_type
    Boolean? retrieve_reference_sequence
    Int? max_ref_node_length
    Int? read_length
    String? target_region
    String? ins_info_key
    Boolean? alt_paths
    Int? recursion_limit
    String input_vcf_bcf
    String output_json_file
    String logging_dot
    String paths_dot
  }
  command <<<
    vcf2paragraph_py \
      ~{input_vcf_bcf} \
      ~{output_json_file} \
      ~{logging_dot} \
      ~{paths_dot} \
      ~{if defined(reference_sequence) then ("--reference-sequence " +  '"' + reference_sequence + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(graph_type) then ("--graph-type " +  '"' + graph_type + '"') else ""} \
      ~{if (retrieve_reference_sequence) then "--retrieve-reference-sequence" else ""} \
      ~{if defined(max_ref_node_length) then ("--max-ref-node-length " +  '"' + max_ref_node_length + '"') else ""} \
      ~{if defined(read_length) then ("--read-length " +  '"' + read_length + '"') else ""} \
      ~{if defined(target_region) then ("--target-region " +  '"' + target_region + '"') else ""} \
      ~{if defined(ins_info_key) then ("--ins-info-key " +  '"' + ins_info_key + '"') else ""} \
      ~{if (alt_paths) then "--alt-paths" else ""} \
      ~{if defined(recursion_limit) then ("--recursion-limit " +  '"' + recursion_limit + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    reference_sequence: "Reference FASTA for checking REF and resolving <DEL>"
    verbose: "More logging; May be given twice for even more"
    graph_type: "Select the type of graph to generate."
    retrieve_reference_sequence: "Retrieve reference sequence for REF nodes"
    max_ref_node_length: "Maximum length of reference nodes before they get\\npadded and truncated."
    read_length: "Read length -- this can be used to add reference\\npadding for disambiguation."
    target_region: "Target regions for read retrieval"
    ins_info_key: "Key for symbolic <INS> in INFO field"
    alt_paths: "Create all possible ALT paths in addition to reference"
    recursion_limit: "Set the recursion limit ( O(expected number of nodes\\nof the graph) for large graphs -- this is required for\\nsorting )\\n"
    input_vcf_bcf: "Input VCF / BCF file"
    output_json_file: "Output JSON file"
    logging_dot: "Common VCF graph options:"
    paths_dot: "--alt-splitting       Also split long alternate alleles (e.g. long"
  }
  output {
    File out_stdout = stdout()
  }
}