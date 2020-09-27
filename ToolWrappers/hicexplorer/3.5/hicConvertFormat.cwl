class: CommandLineTool
id: hicConvertFormat.cwl
inputs:
- id: in_matrices
  doc: "input file(s). Could be one or many files. (default:\nNone)"
  type: string[]
  inputBinding:
    prefix: --matrices
- id: in_out_filename
  doc: 'File name to save the exported matrix. (default: None)'
  type: File[]
  inputBinding:
    prefix: --outFileName
- id: in_input_format
  doc: "File format of the input matrix file. The following\noptions are available:\
    \ `h5` (native HiCExplorer format\nbased on hdf5 storage format), `cool`, `hic`,\
    \ `homer`,\n`hicpro`. (default: None)"
  type: string
  inputBinding:
    prefix: --inputFormat
- id: in_output_format
  doc: "Output format. The following options are available:\n`h5` (native HiCExplorer\
    \ format based on hdf5 storage\nformat). `cool` and `ginteractions`. (default:\
    \ cool)"
  type: string
  inputBinding:
    prefix: --outputFormat
- id: in_correction_name
  doc: "Name of the column which stores the correction\nfactors. The information about\
    \ the column names can be\nfigured out with the tool hicInfo. Option only for\n\
    cool input files. (default: weight)"
  type: string
  inputBinding:
    prefix: --correction_name
- id: in_correction_division
  doc: "If set, division is applied for correction. Default is\na multiplication.\
    \ Option only for cool input files.\n(default: False)"
  type: boolean
  inputBinding:
    prefix: --correction_division
- id: in_store_applied_correction
  doc: "Store the applied correction and do not set correction\nfactors. Option only\
    \ for cool input files. (default:\nFalse)"
  type: boolean
  inputBinding:
    prefix: --store_applied_correction
- id: in_chromosome
  doc: "Load only one chromosome. Option only for cool input\nfiles. (default: None)"
  type: string
  inputBinding:
    prefix: --chromosome
- id: in_enforce_integer
  doc: "Enforce datatype of counts to integer. Option only for\ncool input files.\
    \ (default: False)"
  type: boolean
  inputBinding:
    prefix: --enforce_integer
- id: in_load_raw_values
  doc: "Load only 'count' data and do not apply a correction.\nOption only for cool\
    \ input files. (default: False)"
  type: boolean
  inputBinding:
    prefix: --load_raw_values
- id: in_resolutions
  doc: "List of resolutions that should be added. (default:\nNone)"
  type: string[]
  inputBinding:
    prefix: --resolutions
- id: in_bed_file_hic_pro
  doc: "Bed file(s) of hicpro file format. (default: None)\n"
  type: File[]
  inputBinding:
    prefix: --bedFileHicpro
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- hicConvertFormat
