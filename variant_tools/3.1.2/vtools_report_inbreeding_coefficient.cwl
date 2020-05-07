class: CommandLineTool
id: vtools_report_inbreeding_coefficient.cwl
inputs:
- id: table
  doc: Variants based on which individual inbreeding coefficients are evaluated.
  type: string
  inputBinding:
    position: 0
- id: samples
  doc: '[SAMPLES [SAMPLES ...]] Conditions based on which samples are selected to
    have inbreeding coefficients calculated. Default to all samples.'
  type: boolean
  inputBinding:
    prefix: --samples
- id: maf_field
  doc: Name of the field that holds minor allele frequency for sample variants, which
    is the field name for command 'vtools update table --from_stat "maf_field=maf()"
    --samples ...'.
  type: string
  inputBinding:
    prefix: --maf_field
- id: v
  doc: '{0,1,2,3}, --verbosity {0,1,2,3} Output error and warning (0), info (1), debug
    (2) and trace (3) information to standard output (default to 1).'
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- vtools_report
- inbreeding_coefficient
