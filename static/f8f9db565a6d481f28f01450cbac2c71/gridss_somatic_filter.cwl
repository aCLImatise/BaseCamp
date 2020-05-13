class: CommandLineTool
id: gridss_somatic_filter.cwl
inputs:
- id: gc
  doc: Perform garbage collection after freeing of large objects.
  type: boolean
  inputBinding:
    prefix: --gc
- id: opts
  doc: RDS file containing argument values
  type: boolean
  inputBinding:
    prefix: --opts
- id: pond_ir
  doc: Directory containing Panel Of Normal bed/bedpe used to filter FP somatic events.
    Use gridss. to generate the PON.
  type: boolean
  inputBinding:
    prefix: --pondir
- id: ref
  doc: 'Reference genome to use. Must be a valid installed BSgenome package [default:
    ]'
  type: boolean
  inputBinding:
    prefix: --ref
- id: input
  doc: GRIDSS VCF
  type: boolean
  inputBinding:
    prefix: --input
- id: output
  doc: High confidence somatic subset
  type: boolean
  inputBinding:
    prefix: --output
- id: full_output
  doc: Full call set excluding obviously germline call.
  type: boolean
  inputBinding:
    prefix: --fulloutput
- id: plot_dir
  doc: 'Output directory for plots [default: ]'
  type: boolean
  inputBinding:
    prefix: --plotdir
- id: normal_ordinal
  doc: 'Ordinal of matching normal sample in the VCF [default: 1]'
  type: boolean
  inputBinding:
    prefix: --normalordinal
- id: script_dir
  doc: 'Path to libgridss.R script [default: ./]'
  type: boolean
  inputBinding:
    prefix: --scriptdir
outputs: []
cwlVersion: v1.1
baseCommand:
- gridss_somatic_filter
