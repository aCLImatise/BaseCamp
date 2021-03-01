class: CommandLineTool
id: htsbox_bamshuf.cwl
inputs:
- id: in_output_to_stdout
  doc: output to stdout
  type: boolean?
  inputBinding:
    prefix: -O
- id: in_uncompressed_bam_output
  doc: uncompressed BAM output
  type: boolean?
  inputBinding:
    prefix: -u
- id: in_compression_level
  doc: compression level [3]
  type: long?
  inputBinding:
    prefix: -l
- id: in_number_temporary_files
  doc: number of temporary files [64]
  type: long?
  inputBinding:
    prefix: -n
- id: in_c
  doc: ''
  type: string?
  inputBinding:
    prefix: -c
- id: in_ou
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -Ou
- id: in_bams_huf
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_in_dot_bam
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_out_dot_prefix
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- htsbox
- bamshuf
