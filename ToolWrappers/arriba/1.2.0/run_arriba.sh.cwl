class: CommandLineTool
id: run_arriba.sh.cwl
inputs:
- id: in_star_genome_dir
  doc: ''
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
- run_arriba.sh
