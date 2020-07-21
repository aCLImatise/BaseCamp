class: CommandLineTool
id: ../../../checkm_tree_qa.cwl
inputs:
- id: out_format
  doc: 'desired output: (default: 1) 1. brief summary of genome tree placement 2.
    detailed summary of genome tree placement including lineage-specific statistics
    3. genome tree in Newick format decorated with IMG genome ids 4. genome tree in
    Newick format decorated with taxonomy strings 5. multiple sequence alignment of
    reference genomes and bins'
  type: string
  inputBinding:
    prefix: --out_format
- id: file
  doc: 'print results to file (default: stdout)'
  type: File
  inputBinding:
    prefix: --file
- id: tab_table
  doc: print tab-separated values table
  type: boolean
  inputBinding:
    prefix: --tab_table
- id: quiet
  doc: suppress console output
  type: boolean
  inputBinding:
    prefix: --quiet
- id: tmpdir
  doc: specify an alternative directory for temporary files
  type: string
  inputBinding:
    prefix: --tmpdir
- id: tree_dir
  doc: directory specified during tree command
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- checkm
- tree_qa
