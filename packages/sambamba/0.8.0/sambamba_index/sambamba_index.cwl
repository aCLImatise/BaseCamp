class: CommandLineTool
id: sambamba_index.cwl
inputs:
- id: in_n_threads
  doc: number of threads to use for decompression
  type: long?
  inputBinding:
    prefix: --nthreads
- id: in_show_progress
  doc: show progress bar in STDERR
  type: boolean?
  inputBinding:
    prefix: --show-progress
- id: in_check_bins
  doc: check that bins are set correctly
  type: boolean?
  inputBinding:
    prefix: --check-bins
- id: in_fast_a_input
  doc: "specify that input is in FASTA format\n"
  type: boolean?
  inputBinding:
    prefix: --fasta-input
- id: in_samba_mba_index
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_input_dot_bam_vertical_line_input_dot_fast_a
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_output_file
  doc: ''
  type: string?
  inputBinding:
    position: 2
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
- index
