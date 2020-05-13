class: CommandLineTool
id: biom_subset_table.cwl
inputs:
- id: input_hdf5_fp
  doc: the input hdf5 BIOM table filepath to subset
  type: File
  inputBinding:
    prefix: --input-hdf5-fp
- id: input_json_fp
  doc: the input json BIOM table filepath to subset
  type: File
  inputBinding:
    prefix: --input-json-fp
- id: axis
  doc: '[sample|observation] the axis to subset over, either sample or observation  [required]'
  type: boolean
  inputBinding:
    prefix: --axis
- id: ids
  doc: a file containing a single column of IDs to retain (either sample IDs or observation
    IDs, depending on the axis)  [required]
  type: File
  inputBinding:
    prefix: --ids
- id: output_fp
  doc: the output BIOM table filepath  [required]
  type: File
  inputBinding:
    prefix: --output-fp
outputs: []
cwlVersion: v1.1
baseCommand:
- biom
- subset-table
