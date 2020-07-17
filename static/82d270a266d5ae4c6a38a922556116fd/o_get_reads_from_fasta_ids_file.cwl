class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/o_get_reads_from_fasta_ids_file.cwl
inputs:
- id: s
  doc: ''
  type: boolean
  inputBinding:
    prefix: -S
- id: o_get_reads_from_fast_a
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: input_fast_a
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: ids_file
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: output_fast_a
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- o-get-reads-from-fasta
- ids_file
