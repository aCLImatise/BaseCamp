class: CommandLineTool
id: hifive_hic_combine_replicates_replicate1.cwl
inputs:
- id: replicate_1
  doc: Name of the first HiFive HiCDataset replicate file to be combined.
  type: string
  inputBinding:
    position: 0
- id: replicate_2
  doc: Name of the second HiFive HiCDataset replicate file to be combined.
  type: string
  inputBinding:
    position: 1
- id: output
  doc: Name of file in which to write combined data.
  type: string
  inputBinding:
    position: 2
- id: quiet
  doc: 'Silence output messages. [default: False]'
  type: boolean
  inputBinding:
    prefix: --quiet
outputs: []
cwlVersion: v1.1
baseCommand:
- hifive
- hic-combine-replicates
- replicate1
