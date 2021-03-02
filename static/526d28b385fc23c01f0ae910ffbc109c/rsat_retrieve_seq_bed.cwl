class: CommandLineTool
id: rsat_retrieve_seq_bed.cwl
inputs:
- id: in_retrieve_seq_bed
  doc: "\e[1mVERSION\e[0m"
  type: string
  inputBinding:
    position: 0
- id: in_genome
  doc: "\e[1mUSAGE\e[0m"
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
- retrieve-seq-bed
