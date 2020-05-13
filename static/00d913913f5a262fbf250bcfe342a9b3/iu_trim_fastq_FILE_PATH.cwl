class: CommandLineTool
id: iu_trim_fastq_FILE_PATH.cwl
inputs:
- id: file_path
  doc: FASTQ file to be trimmed
  type: File
  inputBinding:
    position: 0
- id: file_path
  doc: 'Where trimmed sequences will be written (default: [-i]-TRIMMED-TO-[-l]'
  type: File
  inputBinding:
    position: 1
- id: trim_from
  doc: Trim from
  type: long
  inputBinding:
    prefix: --trim-from
- id: trim_to
  doc: Trim to
  type: long
  inputBinding:
    prefix: --trim-to
outputs: []
cwlVersion: v1.1
baseCommand:
- iu-trim-fastq
- FILE_PATH
