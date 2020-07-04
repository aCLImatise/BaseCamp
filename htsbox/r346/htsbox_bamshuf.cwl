class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/htsbox_bamshuf.cwl
inputs:
- id: output_to_stdout
  doc: output to stdout
  type: boolean
  inputBinding:
    prefix: -O
- id: uncompressed_bam_output
  doc: uncompressed BAM output
  type: boolean
  inputBinding:
    prefix: -u
- id: compression_level
  doc: compression level [3]
  type: long
  inputBinding:
    prefix: -l
- id: number_temporary_files
  doc: number of temporary files [64]
  type: long
  inputBinding:
    prefix: -n
- id: ou
  doc: ''
  type: boolean
  inputBinding:
    prefix: -Ou
- id: c
  doc: ''
  type: string
  inputBinding:
    prefix: -c
- id: bams_huf
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_dot_bam
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: out_dot_prefix
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- htsbox
- bamshuf
