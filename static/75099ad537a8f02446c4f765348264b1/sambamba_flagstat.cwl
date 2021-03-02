class: CommandLineTool
id: sambamba_flagstat.cwl
inputs:
- id: in_n_threads
  doc: use NTHREADS for decompression
  type: string?
  inputBinding:
    prefix: --nthreads
- id: in_show_progress
  doc: show progressbar in STDERR
  type: boolean?
  inputBinding:
    prefix: --show-progress
- id: in_tabular
  doc: "output in csv format\n"
  type: boolean?
  inputBinding:
    prefix: --tabular
- id: in_samba_mba_flag_stat
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_input_dot_bam
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/sambamba:0.8.0--h984e79f_0
cwlVersion: v1.1
baseCommand:
- sambamba
- flagstat
