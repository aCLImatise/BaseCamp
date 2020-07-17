class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/sambamba_index.cwl
inputs:
- id: n_threads
  doc: number of threads to use for decompression
  type: string
  inputBinding:
    prefix: --nthreads
- id: show_progress
  doc: show progress bar in STDERR
  type: boolean
  inputBinding:
    prefix: --show-progress
- id: check_bins
  doc: check that bins are set correctly
  type: boolean
  inputBinding:
    prefix: --check-bins
- id: cram_input
  doc: specify that input is in CRAM format
  type: boolean
  inputBinding:
    prefix: --cram-input
- id: samba_mba_index
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: input_dot_bam_vertical_line_input_dot_cram
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: output_file
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- sambamba
- index
