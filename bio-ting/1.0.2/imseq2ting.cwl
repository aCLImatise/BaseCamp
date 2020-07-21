class: CommandLineTool
id: ../../../imseq2ting.cwl
inputs:
- id: im_seq_folder
  doc: Path to directory containing imseq repertoires as act- file
  type: string
  inputBinding:
    prefix: --imseq_folder
- id: output
  doc: Path to output directory
  type: string
  inputBinding:
    prefix: --output
outputs: []
cwlVersion: v1.1
baseCommand:
- imseq2ting
