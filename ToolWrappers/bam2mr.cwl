class: CommandLineTool
id: bam2mr.cwl
inputs:
- id: in_output
  doc: Name of output file
  type: File
  inputBinding:
    prefix: -output
- id: in_suff
  doc: 'read name suffix length (default: 0)'
  type: boolean
  inputBinding:
    prefix: -suff
- id: in_seg_len
  doc: maximum allowed insert size
  type: boolean
  inputBinding:
    prefix: -seg_len
- id: in_max_reads
  doc: maximum number of reads to hold for merging
  type: boolean
  inputBinding:
    prefix: -max_reads
- id: in_verbose
  doc: print more information
  type: boolean
  inputBinding:
    prefix: -verbose
- id: in_about
  doc: print about message
  type: boolean
  inputBinding:
    prefix: -about
- id: in_bam_file
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: Name of output file
  type: File
  outputBinding:
    glob: $(inputs.in_output)
cwlVersion: v1.1
baseCommand:
- bam2mr
