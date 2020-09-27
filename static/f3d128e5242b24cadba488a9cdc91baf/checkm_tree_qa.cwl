class: CommandLineTool
id: checkm_tree_qa.cwl
inputs:
- id: in_out_format
  doc: "desired output: (default: 1)\n1. brief summary of genome tree placement\n\
    2. detailed summary of genome tree placement including lineage-specific statistics\n\
    3. genome tree in Newick format decorated with IMG genome ids\n4. genome tree\
    \ in Newick format decorated with taxonomy strings\n5. multiple sequence alignment\
    \ of reference genomes and bins"
  type: string
  inputBinding:
    prefix: --out_format
- id: in_file
  doc: 'print results to file (default: stdout)'
  type: File
  inputBinding:
    prefix: --file
- id: in_tab_table
  doc: print tab-separated values table
  type: boolean
  inputBinding:
    prefix: --tab_table
- id: in_quiet
  doc: suppress console output
  type: boolean
  inputBinding:
    prefix: --quiet
- id: in_tmpdir
  doc: specify an alternative directory for temporary files
  type: Directory
  inputBinding:
    prefix: --tmpdir
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- checkm
- tree_qa
