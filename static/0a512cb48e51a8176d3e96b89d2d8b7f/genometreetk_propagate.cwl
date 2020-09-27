class: CommandLineTool
id: genometreetk_propagate.cwl
inputs:
- id: in_silent
  doc: suppress output
  type: boolean
  inputBinding:
    prefix: --silent
- id: in_input_taxonomy
  doc: input taxonomy file
  type: string
  inputBinding:
    position: 0
- id: in_metadata_file
  doc: metadata file for all genomes in the GTDB
  type: string
  inputBinding:
    position: 1
- id: in_output_taxonomy
  doc: output taxonomy file
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- genometreetk
- propagate
