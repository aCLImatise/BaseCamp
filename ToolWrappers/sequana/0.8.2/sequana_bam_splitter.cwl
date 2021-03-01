class: CommandLineTool
id: sequana_bam_splitter.cwl
inputs:
- id: in_input
  doc: 'input SAM/BAM/CRAM file (default: None)'
  type: File?
  inputBinding:
    prefix: --input
- id: in_output_directory
  doc: 'input fastq gzipped or not (default: None)'
  type: Directory?
  inputBinding:
    prefix: --output-directory
- id: in_keep_unmapped
  doc: 'keep unmapped files (default: False)'
  type: string?
  inputBinding:
    prefix: --keep-unmapped
- id: in_this
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_bam
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_directory
  doc: 'input fastq gzipped or not (default: None)'
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output_directory)
hints: []
cwlVersion: v1.1
baseCommand:
- sequana_bam_splitter
