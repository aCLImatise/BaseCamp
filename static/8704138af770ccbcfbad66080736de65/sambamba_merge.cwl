class: CommandLineTool
id: sambamba_merge.cwl
inputs:
- id: in_n_threads
  doc: number of threads to use for compression/decompression
  type: long?
  inputBinding:
    prefix: --nthreads
- id: in_compression_level
  doc: level of compression for merged BAM file, number from 0 to 9
  type: long?
  inputBinding:
    prefix: --compression-level
- id: in_header
  doc: output merged header to stdout in SAM format, other options are ignored; mainly
    for debug purposes
  type: boolean?
  inputBinding:
    prefix: --header
- id: in_show_progress
  doc: show progress bar in STDERR
  type: boolean?
  inputBinding:
    prefix: --show-progress
- id: in_filter
  doc: "keep only reads that satisfy FILTER\n"
  type: string?
  inputBinding:
    prefix: --filter
- id: in_samba_mba_merge
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_output_dot_bam
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_input_one_dot_bam
  doc: ''
  type: long
  inputBinding:
    position: 2
- id: in_input_two_dot_bam
  doc: ''
  type: long
  inputBinding:
    position: 3
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
- merge
