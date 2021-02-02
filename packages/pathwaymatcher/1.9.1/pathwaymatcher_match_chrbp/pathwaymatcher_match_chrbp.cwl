class: CommandLineTool
id: pathwaymatcher_match_chrbp.cwl
inputs:
- id: in_i
  doc: '[-o=<output_prefix>]'
  type: File
  inputBinding:
    prefix: -i
- id: in_mapping
  doc: "Path to directory with the static mapping files. By\ndefault uses the mapping\
    \ files integrated in the jar\nfile."
  type: File
  inputBinding:
    prefix: --mapping
- id: in_graph
  doc: Create default connection graph according to input type.
  type: boolean
  inputBinding:
    prefix: --graph
- id: in_graph_gene
  doc: Create gene connection graph
  type: boolean
  inputBinding:
    prefix: --graphGene
- id: in_graph_proteo_form
  doc: proteoform connection graph
  type: string
  inputBinding:
    prefix: --graphProteoform
- id: in_graph_uniprot
  doc: Create protein connection graph
  type: boolean
  inputBinding:
    prefix: --graphUniprot
- id: in_input
  doc: Input file with path
  type: File
  inputBinding:
    prefix: --input
- id: in_output
  doc: "Path and prefix for the output files: search.tsv (list\nof reactions and pathways\
    \ containing the input),\nanalysis.tsv (over-representation analysis) and\nnetworks\
    \ files."
  type: File
  inputBinding:
    prefix: --output
- id: in_top_level_pathways
  doc: Show Top Level Pathways in the search result.
  type: boolean
  inputBinding:
    prefix: --topLevelPathways
- id: in_gt
  doc: ''
  type: boolean
  inputBinding:
    prefix: -gT
- id: in_jar
  doc: ''
  type: string
  inputBinding:
    prefix: -jar
- id: in_java
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_match_chr_bp
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- pathwaymatcher
- match-chrbp
