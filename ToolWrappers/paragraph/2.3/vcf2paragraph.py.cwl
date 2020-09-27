class: CommandLineTool
id: vcf2paragraph.py.cwl
inputs:
- id: in_reference_sequence
  doc: Reference FASTA for checking REF and resolving <DEL>
  type: string
  inputBinding:
    prefix: --reference-sequence
- id: in_verbose
  doc: More logging; May be given twice for even more
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_graph_type
  doc: Select the type of graph to generate.
  type: string
  inputBinding:
    prefix: --graph-type
- id: in_retrieve_reference_sequence
  doc: Retrieve reference sequence for REF nodes
  type: boolean
  inputBinding:
    prefix: --retrieve-reference-sequence
- id: in_max_ref_node_length
  doc: "Maximum length of reference nodes before they get\npadded and truncated."
  type: long
  inputBinding:
    prefix: --max-ref-node-length
- id: in_read_length
  doc: "Read length -- this can be used to add reference\npadding for disambiguation."
  type: long
  inputBinding:
    prefix: --read-length
- id: in_target_region
  doc: Target regions for read retrieval
  type: string
  inputBinding:
    prefix: --target-region
- id: in_ins_info_key
  doc: Key for symbolic <INS> in INFO field
  type: string
  inputBinding:
    prefix: --ins-info-key
- id: in_alt_paths
  doc: Create all possible ALT paths in addition to reference
  type: boolean
  inputBinding:
    prefix: --alt-paths
- id: in_recursion_limit
  doc: "Set the recursion limit ( O(expected number of nodes\nof the graph) for large\
    \ graphs -- this is required for\nsorting )\n"
  type: long
  inputBinding:
    prefix: --recursion-limit
- id: in_input
  doc: Input VCF / BCF file
  type: string
  inputBinding:
    position: 0
- id: in_output
  doc: Output JSON file
  type: string
  inputBinding:
    position: 1
- id: in_logging_dot
  doc: 'Common VCF graph options:'
  type: string
  inputBinding:
    position: 0
- id: in_paths_dot
  doc: --alt-splitting       Also split long alternate alleles (e.g. long
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- vcf2paragraph.py
