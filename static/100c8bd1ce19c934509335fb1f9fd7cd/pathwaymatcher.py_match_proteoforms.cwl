class: CommandLineTool
id: pathwaymatcher.py_match_proteoforms.cwl
inputs:
- id: in_mapping
  doc: "Path to directory with the static mapping files. By\ndefault uses the mapping\
    \ files integrated in the jar\nfile."
  type: File?
  inputBinding:
    prefix: --mapping
- id: in_graph
  doc: Create default connection graph according to input type.
  type: boolean?
  inputBinding:
    prefix: --graph
- id: in_graph_gene
  doc: Create gene connection graph
  type: boolean?
  inputBinding:
    prefix: --graphGene
- id: in_graph_proteo_form
  doc: proteoform connection graph
  type: string?
  inputBinding:
    prefix: --graphProteoform
- id: in_graph_uniprot
  doc: Create protein connection graph
  type: boolean?
  inputBinding:
    prefix: --graphUniprot
- id: in_input
  doc: Input file with path
  type: File?
  inputBinding:
    prefix: --input
- id: in_match_type
  doc: "Proteoform match criteria.\nValid values: STRICT, SUPERSET, SUPERSET_NO_TYPES,\n\
    SUBSET, SUBSET_NO_TYPES, ONE, ONE_NO_TYPES,\nACCESSION.\nDefault: SUBSET"
  type: string?
  inputBinding:
    prefix: --matchType
- id: in_output
  doc: "Path and prefix for the output files: search.tsv (list\nof reactions and pathways\
    \ containing the input),\nanalysis.tsv (over-representation analysis) and\nnetworks\
    \ files."
  type: File?
  inputBinding:
    prefix: --output
- id: in_range
  doc: "Integer range of error for PTM sites.\nDefault: 0"
  type: long?
  inputBinding:
    prefix: --range
- id: in_top_level_pathways
  doc: Show Top Level Pathways in the search result.
  type: boolean?
  inputBinding:
    prefix: --topLevelPathways
- id: in_gt
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -gT
- id: in_jar
  doc: ''
  type: string?
  inputBinding:
    prefix: -jar
- id: in_java
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_match_proteo_forms
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- pathwaymatcher.py
- match-proteoforms
