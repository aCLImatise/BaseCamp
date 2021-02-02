class: CommandLineTool
id: fastq_scan.cwl
inputs:
- id: in_genome_size_calculating
  doc: Genome size for calculating estimated sequencing coverage. (Default 1)
  type: long
  inputBinding:
    prefix: -g
- id: in_ascii_offset_input
  doc: ASCII offset for input quality scores, can be 33 or 64. (Default 33)
  type: long
  inputBinding:
    prefix: -p
- id: in_print_version_information
  doc: Print version information and exit
  type: boolean
  inputBinding:
    prefix: -v
- id: in_zero_dot_four_dot_one
  doc: 'Optional arguments:'
  type: double
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- fastq-scan
