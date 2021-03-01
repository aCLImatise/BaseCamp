class: CommandLineTool
id: rsat_matrix_from_patterns.cwl
inputs:
- id: in_matrix_from_patterns
  doc: "\e[1mDESCRIPTION\e[0m"
  type: string
  inputBinding:
    position: 0
- id: in_jvheldenatulbdotacdotbe
  doc: "\e[1mCATEGORY\e[0m"
  type: string
  inputBinding:
    position: 0
- id: in_sequences
  doc: motif discovery
  type: string
  inputBinding:
    position: 1
- id: in_dyad_analysis_dot
  doc: "\e[1m-toppat #\e[0m"
  type: string
  inputBinding:
    position: 0
- id: in_strands
  doc: "\e[1m-1str\e[0m use a single strand to build the motifs"
  type: string
  inputBinding:
    position: 0
- id: in_ones_dot
  doc: "\e[1m-sites\e[0m"
  type: string
  inputBinding:
    position: 0
- id: in_pss_mdot
  doc: "\e[1m\e[33mmatrix-scan\e[0m\e[0m"
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- rsat
- matrix-from-patterns
