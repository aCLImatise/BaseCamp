#!/usr/bin/env cwl-runner

baseCommand:
- hicConvertFormat
class: CommandLineTool
cwlVersion: v1.0
id: hicconvertformat
inputs:
- doc: 'input file(s). Could be one or many files. (default: None)'
  id: matrices
  inputBinding:
    prefix: --matrices
  type:
    items: string
    type: array
- doc: 'File name to save the exported matrix. (default: None)'
  id: out_filename
  inputBinding:
    prefix: --outFileName
  type:
    items: string
    type: array
- doc: 'File format of the input matrix file. The following options are available:
    `h5` (native HiCExplorer format based on hdf5 storage format), `cool`, `hic`,
    `homer`, `hicpro`. (default: None)'
  id: input_format
  inputBinding:
    prefix: --inputFormat
  type: string
- doc: 'Output format. The following options are available: `h5` (native HiCExplorer
    format based on hdf5 storage format). `cool` and `ginteractions`. (default: cool)'
  id: output_format
  inputBinding:
    prefix: --outputFormat
  type: string
- doc: 'Name of the column which stores the correction factors. The information about
    the column names can be figured out with the tool hicInfo. Option only for cool
    input files. (default: weight)'
  id: correction_name
  inputBinding:
    prefix: --correction_name
  type: string
- doc: 'If set, division is applied for correction. Default is a multiplication. Option
    only for cool input files. (default: False)'
  id: correction_division
  inputBinding:
    prefix: --correction_division
  type: boolean
- doc: 'Store the applied correction and do not set correction factors. Option only
    for cool input files. (default: False)'
  id: store_applied_correction
  inputBinding:
    prefix: --store_applied_correction
  type: boolean
- doc: 'Load only one chromosome. Option only for cool input files. (default: None)'
  id: chromosome
  inputBinding:
    prefix: --chromosome
  type: string
- doc: 'Enforce datatype of counts to integer. Option only for cool input files. (default:
    False)'
  id: enforce_integer
  inputBinding:
    prefix: --enforce_integer
  type: boolean
- doc: "Load only 'count' data and do not apply a correction. Option only for cool\
    \ input files. (default: False)"
  id: load_raw_values
  inputBinding:
    prefix: --load_raw_values
  type: boolean
- doc: 'List of resolutions that should be added. (default: None)'
  id: resolutions
  inputBinding:
    prefix: --resolutions
  type:
    items: string
    type: array
- doc: 'Bed file(s) of hicpro file format. (default: None)'
  id: bed_file_hic_pro
  inputBinding:
    prefix: --bedFileHicpro
  type:
    items: string
    type: array
