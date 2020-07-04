version 1.0

task Vcf2paragraph.py {
  input {
    String? reference_sequence
    Boolean? verbose
    String? graph_type
    Boolean? retrieve_reference_sequence
    Int? max_ref_node_length
    String? read_length
    String? target_region
    String? ins_info_key
    Boolean? alt_paths
    Boolean? alt_splitting
    String? recursion_limit
    String input_vcf_bcf
    String output_json_file
  }
  command <<<
    vcf2paragraph.py \
      ~{input_vcf_bcf} \
      ~{output_json_file} \
      ~{if defined(reference_sequence) then ("--reference-sequence " +  '"' + reference_sequence + '"') else ""} \
      ~{true="--verbose" false="" verbose} \
      ~{if defined(graph_type) then ("--graph-type " +  '"' + graph_type + '"') else ""} \
      ~{true="--retrieve-reference-sequence" false="" retrieve_reference_sequence} \
      ~{if defined(max_ref_node_length) then ("--max-ref-node-length " +  '"' + max_ref_node_length + '"') else ""} \
      ~{if defined(read_length) then ("--read-length " +  '"' + read_length + '"') else ""} \
      ~{if defined(target_region) then ("--target-region " +  '"' + target_region + '"') else ""} \
      ~{if defined(ins_info_key) then ("--ins-info-key " +  '"' + ins_info_key + '"') else ""} \
      ~{true="--alt-paths" false="" alt_paths} \
      ~{true="--alt-splitting" false="" alt_splitting} \
      ~{if defined(recursion_limit) then ("--recursion-limit " +  '"' + recursion_limit + '"') else ""}
  >>>
  parameter_meta {
    reference_sequence: "Reference FASTA for checking REF and resolving <DEL>"
    verbose: "More logging; May be given twice for even more logging."
    graph_type: "Select the type of graph to generate."
    retrieve_reference_sequence: "Retrieve reference sequence for REF nodes"
    max_ref_node_length: "Maximum length of reference nodes before they get padded and truncated."
    read_length: "Read length -- this can be used to add reference padding for disambiguation."
    target_region: "Target regions for read retrieval"
    ins_info_key: "Key for symbolic <INS> in INFO field"
    alt_paths: "Create all possible ALT paths in addition to reference paths."
    alt_splitting: "Also split long alternate alleles (e.g. long insertions)"
    recursion_limit: "Set the recursion limit ( O(expected number of nodes of the graph) for large graphs -- this is required for sorting )"
    input_vcf_bcf: "Input VCF / BCF file"
    output_json_file: "Output JSON file"
  }
}