class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/svtk_vcf2bed.cwl
inputs:
- id: no_samples
  doc: Don't include comma-delimited list of called samples for each variant.
  type: boolean
  inputBinding:
    prefix: --no-samples
- id: info
  doc: INFO field to include as column in output. May be specified more than once.
    To include all INFO fields, specify `--info ALL`. INFO fields are reported in
    the order in which they are requested. If ALL INFO fields are requested, they
    are reported in the order in which they appear in the VCF header.
  type: string
  inputBinding:
    prefix: --info
- id: include_filters
  doc: Include FILTER status in output, with the same behavior an INFO field.
  type: boolean
  inputBinding:
    prefix: --include-filters
- id: split_bnd
  doc: Report two entries in bed file for each BND.
  type: boolean
  inputBinding:
    prefix: --split-bnd
- id: split_cpx
  doc: Report entries for each CPX rearrangement interval.
  type: boolean
  inputBinding:
    prefix: --split-cpx
- id: no_header
  doc: Suppress header.
  type: boolean
  inputBinding:
    prefix: --no-header
- id: no_sort_coords
  doc: Do not sort start/end coordinates per record before writing to bed.
  type: boolean
  inputBinding:
    prefix: --no-sort-coords
- id: no_unresolved
  doc: Do not output unresolved variants.
  type: boolean
  inputBinding:
    prefix: --no-unresolved
- id: simple_sinks
  doc: Report all INS sinks as 1bp intervals.
  type: boolean
  inputBinding:
    prefix: --simple-sinks
- id: vcf
  doc: VCF to convert.
  type: string
  inputBinding:
    position: 0
- id: bed
  doc: Converted bed. Specify `-` or `stdout` to write to stdout.
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- svtk
- vcf2bed
