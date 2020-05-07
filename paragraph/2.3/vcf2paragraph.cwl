class: CommandLineTool
id: vcf2paragraph.py.cwl
inputs:
- id: input
  doc: Input VCF / BCF file
  type: string
  inputBinding:
    position: 0
- id: output
  doc: Output JSON file
  type: string
  inputBinding:
    position: 1
- id: reference_sequence
  doc: Reference FASTA for checking REF and resolving <DEL>
  type: string
  inputBinding:
    prefix: --reference-sequence
- id: verbose
  doc: More logging; May be given twice for even more logging.
  type: boolean
  inputBinding:
    prefix: --verbose
- id: graph_type
  doc: Select the type of graph to generate.
  type: string
  inputBinding:
    prefix: --graph-type
- id: retrieve_reference_sequence
  doc: Retrieve reference sequence for REF nodes
  type: boolean
  inputBinding:
    prefix: --retrieve-reference-sequence
- id: max_ref_node_length
  doc: Maximum length of reference nodes before they get padded and truncated.
  type: long
  inputBinding:
    prefix: --max-ref-node-length
- id: read_length
  doc: Read length -- this can be used to add reference padding for disambiguation.
  type: string
  inputBinding:
    prefix: --read-length
- id: target_region
  doc: Target regions for read retrieval
  type: string
  inputBinding:
    prefix: --target-region
- id: ins_info_key
  doc: Key for symbolic <INS> in INFO field
  type: string
  inputBinding:
    prefix: --ins-info-key
- id: alt_paths
  doc: Create all possible ALT paths in addition to reference paths.
  type: boolean
  inputBinding:
    prefix: --alt-paths
- id: alt_splitting
  doc: Also split long alternate alleles (e.g. long insertions)
  type: boolean
  inputBinding:
    prefix: --alt-splitting
- id: recursion_limit
  doc: Set the recursion limit ( O(expected number of nodes of the graph) for large
    graphs -- this is required for sorting )
  type: string
  inputBinding:
    prefix: --recursion-limit
outputs: []
cwlVersion: v1.1
baseCommand:
- vcf2paragraph.py
