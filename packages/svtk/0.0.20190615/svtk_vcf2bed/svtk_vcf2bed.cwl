class: CommandLineTool
id: svtk_vcf2bed.cwl
inputs:
- id: in_no_samples
  doc: "Don't include comma-delimited list of called samples\nfor each variant."
  type: boolean
  inputBinding:
    prefix: --no-samples
- id: in_info
  doc: "INFO field to include as column in output. May be\nspecified more than once.\
    \ To include all INFO fields,\nspecify `--info ALL`. INFO fields are reported\
    \ in the\norder in which they are requested. If ALL INFO fields\nare requested,\
    \ they are reported in the order in which\nthey appear in the VCF header."
  type: string
  inputBinding:
    prefix: --info
- id: in_include_filters
  doc: "Include FILTER status in output, with the same\nbehavior an INFO field."
  type: boolean
  inputBinding:
    prefix: --include-filters
- id: in_split_bnd
  doc: Report two entries in bed file for each BND.
  type: boolean
  inputBinding:
    prefix: --split-bnd
- id: in_split_cpx
  doc: Report entries for each CPX rearrangement interval.
  type: boolean
  inputBinding:
    prefix: --split-cpx
- id: in_no_header
  doc: Suppress header.
  type: boolean
  inputBinding:
    prefix: --no-header
- id: in_no_sort_coords
  doc: "Do not sort start/end coordinates per record before\nwriting to bed."
  type: boolean
  inputBinding:
    prefix: --no-sort-coords
- id: in_no_unresolved
  doc: Do not output unresolved variants.
  type: boolean
  inputBinding:
    prefix: --no-unresolved
- id: in_simple_sinks
  doc: Report all INS sinks as 1bp intervals.
  type: boolean
  inputBinding:
    prefix: --simple-sinks
- id: in_vcf
  doc: VCF to convert.
  type: string
  inputBinding:
    position: 0
- id: in_bed
  doc: Converted bed. Specify `-` or `stdout` to write to
  type: string
  inputBinding:
    position: 1
- id: in_stdout_dot
  doc: 'optional arguments:'
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- svtk
- vcf2bed
