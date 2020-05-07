class: CommandLineTool
id: nasp.cwl
inputs:
- id: reference_fast_a
  doc: Path to the reference fasta.
  type: string
  inputBinding:
    position: 0
- id: output_folder
  doc: Folder to store the output files.
  type: string
  inputBinding:
    position: 1
- id: config
  doc: Path to the configuration xml file.
  type: string
  inputBinding:
    prefix: --config
outputs: []
cwlVersion: v1.1
baseCommand:
- nasp
