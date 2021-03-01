class: CommandLineTool
id: mb_table2fasta.cwl
inputs:
- id: in_flank_bp
  doc: ''
  type: string?
  inputBinding:
    prefix: --flank_bp
- id: in_table_file
  doc: genome_fasta
  type: string
  inputBinding:
    position: 0
- id: in_output_fast_a
  doc: 'optional arguments:'
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
- mb-table2fasta
