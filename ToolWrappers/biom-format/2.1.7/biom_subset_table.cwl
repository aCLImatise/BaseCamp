class: CommandLineTool
id: biom_subset_table.cwl
inputs:
- id: in_choose_subset_write
  doc: "Choose a subset of the observations in table.biom (HDF5) and write them to\n\
    subset.biom:\n$ biom subset-table -i table.biom -a observations -s observation_ids.txt\n\
    -o subset.biom"
  type: long
  inputBinding:
    prefix: -o
- id: in_input_hdf_five_fp
  doc: the input hdf5 BIOM table filepath to subset
  type: File
  inputBinding:
    prefix: --input-hdf5-fp
- id: in_input_json_fp
  doc: the input json BIOM table filepath to subset
  type: File
  inputBinding:
    prefix: --input-json-fp
- id: in_axis
  doc: "[sample|observation]\nthe axis to subset over, either sample or\nobservation\
    \  [required]"
  type: boolean
  inputBinding:
    prefix: --axis
- id: in_ids
  doc: "a file containing a single column of IDs to\nretain (either sample IDs or\
    \ observation\nIDs, depending on the axis)  [required]"
  type: File
  inputBinding:
    prefix: --ids
- id: in_output_fp
  doc: the output BIOM table filepath  [required]
  type: File
  inputBinding:
    prefix: --output-fp
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_fp
  doc: the output BIOM table filepath  [required]
  type: File
  outputBinding:
    glob: $(inputs.in_output_fp)
cwlVersion: v1.1
baseCommand:
- biom
- subset-table
