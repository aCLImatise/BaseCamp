class: CommandLineTool
id: mb_table2fasta.cwl
inputs:
- id: in_flank_bp
  doc: ''
  type: string
  inputBinding:
    prefix: --flank_bp
- id: in_genome_fast_a
  doc: output_fasta
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- mb-table2fasta
