class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/sff2fastq.cwl
inputs:
- id: program_version_information
  doc: Program and version information
  type: boolean
  inputBinding:
    prefix: -v
- id: output_untrimmed_sequence
  doc: Output the untrimmed sequence and quality scores
  type: boolean
  inputBinding:
    prefix: -n
- id: desired_fastq_output
  doc: Desired fastq output file. If not specified, defaults to stdout
  type: string
  inputBinding:
    prefix: -o
- id: sff_file
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- sff2fastq
