class: CommandLineTool
id: sambamba_flagstat.cwl
inputs:
- id: samba_mba_flag_stat
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: input_bam
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: n_threads
  doc: use NTHREADS for decompression
  type: string
  inputBinding:
    prefix: --nthreads
- id: show_progress
  doc: show progressbar in STDERR
  type: boolean
  inputBinding:
    prefix: --show-progress
outputs: []
cwlVersion: v1.1
baseCommand:
- sambamba
- flagstat
