class: CommandLineTool
id: dimspy_hdf5_pls_to_txt.cwl
inputs:
- id: input
  doc: HDF5 file that contains a list of peaklist objects from one of the processing
    steps.
  type: string
  inputBinding:
    prefix: --input
- id: output
  doc: Directory to write to.
  type: string
  inputBinding:
    prefix: --output
- id: delimiter
  doc: Values on each line of the file are separated by this character.
  type: string
  inputBinding:
    prefix: --delimiter
outputs: []
cwlVersion: v1.1
baseCommand:
- dimspy
- hdf5-pls-to-txt
