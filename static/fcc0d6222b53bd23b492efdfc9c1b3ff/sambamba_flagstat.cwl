class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/sambamba_flagstat.cwl
inputs:
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
- id: samba_mba_flag_stat
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: input_dot_bam
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- sambamba
- flagstat
