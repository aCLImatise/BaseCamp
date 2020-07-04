class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/checkm_modify.cwl
inputs:
- id: add
  doc: ID of sequence to add to bin (may specify multiple times)
  type: string
  inputBinding:
    prefix: --add
- id: remove
  doc: ID of sequence to remove from bin (may specify multiple times)
  type: string
  inputBinding:
    prefix: --remove
- id: outlier_file
  doc: remove all sequences marked as outliers in the bin (see outlier command)
  type: string
  inputBinding:
    prefix: --outlier_file
- id: quiet
  doc: suppress console output
  type: boolean
  inputBinding:
    prefix: --quiet
- id: seq_file
  doc: sequences used to generate bins (fasta format)
  type: string
  inputBinding:
    position: 0
- id: bin_file
  doc: bin to be modified
  type: string
  inputBinding:
    position: 1
- id: output_file
  doc: modified bin
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- checkm
- modify
