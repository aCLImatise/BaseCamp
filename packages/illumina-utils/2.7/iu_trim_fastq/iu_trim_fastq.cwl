class: CommandLineTool
id: iu_trim_fastq.cwl
inputs:
- id: in_trim_from
  doc: Trim from
  type: long
  inputBinding:
    prefix: --trim-from
- id: in_trim_to
  doc: "Trim to\n"
  type: long
  inputBinding:
    prefix: --trim-to
- id: in_file_path
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- iu-trim-fastq
