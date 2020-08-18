class: CommandLineTool
id: ../../../fastq_scan.cwl
inputs:
- id: genome_size_calculating
  doc: Genome size for calculating estimated sequencing coverage. (Default 1)
  type: long
  inputBinding:
    prefix: -g
- id: ascii_offset_input
  doc: ASCII offset for input quality scores, can be 33 or 64. (Default 33)
  type: long
  inputBinding:
    prefix: -p
- id: print_version_information
  doc: Print version information and exit
  type: boolean
  inputBinding:
    prefix: -v
- id: cat
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: fast_q
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- fastq-scan
