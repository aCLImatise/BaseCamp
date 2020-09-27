class: CommandLineTool
id: Bandage_querypaths.cwl
inputs:
- id: in_path_fast_a
  doc: Put all query path sequences in a multi-FASTA file, not in the TSV file
  type: boolean
  inputBinding:
    prefix: --pathfasta
- id: in_hits_fast_a
  doc: Produce a multi-FASTA file of all BLAST hits in the query paths
  type: boolean
  inputBinding:
    prefix: --hitsfasta
- id: in_help_all
  doc: View all command line settings
  type: boolean
  inputBinding:
    prefix: --helpall
- id: in_graph
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_queries
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_output_prefix
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- Bandage
- querypaths
