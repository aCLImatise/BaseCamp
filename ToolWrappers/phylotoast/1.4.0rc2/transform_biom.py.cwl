class: CommandLineTool
id: transform_biom.py.cwl
inputs:
- id: in_biom_table_fp
  doc: Path to the input BIOM-format table. [REQUIRED]
  type: File?
  inputBinding:
    prefix: --biom_table_fp
- id: in_transform
  doc: "The transform to apply to the data. Default: arcsine\nsquare root."
  type: string?
  inputBinding:
    prefix: --transform
- id: in_fmt
  doc: "Set the output format of the BIOM table. Default is\nHDF5."
  type: string?
  inputBinding:
    prefix: --fmt
- id: in_gzip
  doc: "Compress the output BIOM table with gzip. HDF5 BIOM\n(v2.x) files are internally\
    \ compressed by default, so\nthis option is not needed when specifying --fmt hdf5."
  type: boolean?
  inputBinding:
    prefix: --gzip
- id: in_output_fp
  doc: Output path for the transformed BIOM table.[REQUIRED]
  type: File?
  inputBinding:
    prefix: --output_fp
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_fp
  doc: Output path for the transformed BIOM table.[REQUIRED]
  type: File?
  outputBinding:
    glob: $(inputs.in_output_fp)
hints: []
cwlVersion: v1.1
baseCommand:
- transform_biom.py
