class: CommandLineTool
id: filter_lq_isoforms.py.cwl
inputs:
- id: fast_q_filename
  doc: 'LQ FASTQ filename (ex: lq_isoforms.fastq'
  type: string
  inputBinding:
    position: 0
- id: output_filename
  doc: Output FASTQ filename
  type: string
  inputBinding:
    position: 1
- id: min_fl_count
  doc: 'Minimum FL count (default: 2).'
  type: long
  inputBinding:
    prefix: --min_fl_count
- id: min_exp_acc
  doc: 'Minimum predicted accuracy (default: 0.99).'
  type: long
  inputBinding:
    prefix: --min_exp_acc
- id: is_fl_nc
  doc: Input FASTQ is FLNC, not LQ
  type: boolean
  inputBinding:
    prefix: --is_flnc
outputs: []
cwlVersion: v1.1
baseCommand:
- filter_lq_isoforms.py
