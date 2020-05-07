class: CommandLineTool
id: pathwaymatcher.py_match_modified_peptides.cwl
inputs:
- id: mapping
  doc: Path to directory with the static mapping files. By default uses the mapping
    files integrated in the jar file.
  type: string
  inputBinding:
    prefix: --mapping
- id: fast_a
  doc: Path and name of the fasta file containing the Proteins where to find the peptides.
  type: string
  inputBinding:
    prefix: --fasta
- id: graph
  doc: Create default connection graph according to input type.
  type: boolean
  inputBinding:
    prefix: --graph
- id: graph_gene
  doc: Create gene connection graph
  type: boolean
  inputBinding:
    prefix: --graphGene
- id: graph_proteo_form
  doc: proteoform connection graph
  type: string
  inputBinding:
    prefix: --graphProteoform
- id: graph_uniprot
  doc: Create protein connection graph
  type: boolean
  inputBinding:
    prefix: --graphUniprot
- id: input
  doc: Input file with path
  type: string
  inputBinding:
    prefix: --input
- id: match_type
  doc: 'Proteoform match criteria. Valid values: STRICT, SUPERSET, SUPERSET_NO_TYPES,
    SUBSET, SUBSET_NO_TYPES, ONE, ONE_NO_TYPES, ACCESSION. Default: SUBSET'
  type: string
  inputBinding:
    prefix: --matchType
- id: output
  doc: 'Path and prefix for the output files: search.tsv (list of reactions and pathways
    containing the input), analysis.tsv (over-representation analysis) and networks
    files.'
  type: string
  inputBinding:
    prefix: --output
- id: range
  doc: 'Integer range of error for PTM sites. Default: 0'
  type: string
  inputBinding:
    prefix: --range
- id: top_level_pathways
  doc: Show Top Level Pathways in the search result.
  type: boolean
  inputBinding:
    prefix: --topLevelPathways
outputs: []
cwlVersion: v1.1
baseCommand:
- pathwaymatcher.py
- match-modified-peptides
