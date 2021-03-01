class: CommandLineTool
id: sff2fastq.cwl
inputs:
- id: in_program_version_information
  doc: Program and version information
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_output_untrimmed_sequence
  doc: Output the untrimmed sequence and quality scores
  type: boolean?
  inputBinding:
    prefix: -n
- id: in_desired_fastq_file
  doc: Desired fastq output file. If not specified, defaults to stdout
  type: File?
  inputBinding:
    prefix: -o
- id: in_sff_file
  doc: ''
  type: string?
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_desired_fastq_file
  doc: Desired fastq output file. If not specified, defaults to stdout
  type: File?
  outputBinding:
    glob: $(inputs.in_desired_fastq_file)
hints: []
cwlVersion: v1.1
baseCommand:
- sff2fastq
