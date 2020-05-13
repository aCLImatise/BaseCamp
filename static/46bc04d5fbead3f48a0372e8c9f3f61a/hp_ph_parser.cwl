class: CommandLineTool
id: hp_ph_parser.cwl
inputs:
- id: haplotypes_fa
  doc: Haplotype file created by PredictHaplo.
  type: string
  inputBinding:
    prefix: --haplotypes_fa
- id: outdir
  doc: 'Output directory. (default: .)'
  type: string
  inputBinding:
    prefix: --outdir
- id: prefix
  doc: Prefix to add to sequence names
  type: string
  inputBinding:
    prefix: --prefix
- id: keep_gaps
  doc: 'Do not remove gaps from alignment (default: False)'
  type: boolean
  inputBinding:
    prefix: --keep_gaps
- id: quiet
  doc: 'Do not write output to console (silence stdout and stderr) (default: False)'
  type: boolean
  inputBinding:
    prefix: --quiet
- id: log_file
  doc: Append console output to this file
  type: string
  inputBinding:
    prefix: --logfile
outputs: []
cwlVersion: v1.1
baseCommand:
- hp_ph_parser
