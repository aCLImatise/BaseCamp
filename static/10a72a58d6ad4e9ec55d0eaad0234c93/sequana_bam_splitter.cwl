class: CommandLineTool
id: ../../../sequana_bam_splitter.cwl
inputs:
- id: in_input
  doc: 'input SAM/BAM/CRAM file (default: None)'
  type: File
  inputBinding:
    prefix: --input
- id: in_output_directory
  doc: 'input fastq gzipped or not (default: None)'
  type: Directory
  inputBinding:
    prefix: --output-directory
- id: in_prefix
  doc: ''
  type: string
  inputBinding:
    prefix: --prefix
- id: in_keep_unmapped
  doc: 'keep unmapped files (default: False)'
  type: boolean
  inputBinding:
    prefix: --keep-unmapped
- id: in_level
  doc: ''
  type: string
  inputBinding:
    prefix: --level
- id: in_this
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_bam_slash_sam_slash_cram
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_filter
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_removes
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_unmapped
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_and
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: in_secondary
  doc: ''
  type: string
  inputBinding:
    position: 6
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_directory
  doc: 'input fastq gzipped or not (default: None)'
  type: Directory
  outputBinding:
    glob: $(inputs.in_output_directory)
cwlVersion: v1.1
baseCommand:
- sequana_bam_splitter
