class: CommandLineTool
id: hicConvertFormat.cwl
inputs:
- id: matrices
  doc: 'input file(s). Could be one or many files. (default: None)'
  type: string[]
  inputBinding:
    prefix: --matrices
- id: out_filename
  doc: 'File name to save the exported matrix. (default: None)'
  type: string[]
  inputBinding:
    prefix: --outFileName
- id: input_format
  doc: 'File format of the input matrix file. The following options are available:
    `h5` (native HiCExplorer format based on hdf5 storage format), `cool`, `hic`,
    `homer`, `hicpro`. (default: None)'
  type: string
  inputBinding:
    prefix: --inputFormat
- id: output_format
  doc: 'Output format. The following options are available: `h5` (native HiCExplorer
    format based on hdf5 storage format). `cool` and `ginteractions`. (default: cool)'
  type: string
  inputBinding:
    prefix: --outputFormat
- id: correction_name
  doc: 'Name of the column which stores the correction factors. The information about
    the column names can be figured out with the tool hicInfo. Option only for cool
    input files. (default: weight)'
  type: string
  inputBinding:
    prefix: --correction_name
- id: correction_division
  doc: 'If set, division is applied for correction. Default is a multiplication. Option
    only for cool input files. (default: False)'
  type: boolean
  inputBinding:
    prefix: --correction_division
- id: store_applied_correction
  doc: 'Store the applied correction and do not set correction factors. Option only
    for cool input files. (default: False)'
  type: boolean
  inputBinding:
    prefix: --store_applied_correction
- id: chromosome
  doc: 'Load only one chromosome. Option only for cool input files. (default: None)'
  type: string
  inputBinding:
    prefix: --chromosome
- id: enforce_integer
  doc: 'Enforce datatype of counts to integer. Option only for cool input files. (default:
    False)'
  type: boolean
  inputBinding:
    prefix: --enforce_integer
- id: load_raw_values
  doc: "Load only 'count' data and do not apply a correction. Option only for cool\
    \ input files. (default: False)"
  type: boolean
  inputBinding:
    prefix: --load_raw_values
- id: resolutions
  doc: 'List of resolutions that should be added. (default: None)'
  type: string[]
  inputBinding:
    prefix: --resolutions
- id: bed_file_hic_pro
  doc: 'Bed file(s) of hicpro file format. (default: None)'
  type: string[]
  inputBinding:
    prefix: --bedFileHicpro
outputs: []
cwlVersion: v1.1
baseCommand:
- hicConvertFormat
