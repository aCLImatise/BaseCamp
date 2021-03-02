class: CommandLineTool
id: bamtofastq.py.cwl
inputs:
- id: in_read_group
  doc: Read group(s) to extract (comma separated)
  type: string?
  inputBinding:
    prefix: --readgroup
- id: in_rename
  doc: Rename reads
  type: boolean?
  inputBinding:
    prefix: --rename
- id: in_is_sam
  doc: Input is SAM format
  type: boolean?
  inputBinding:
    prefix: --is_sam
- id: in_header
  doc: "Write BAM header to file\n"
  type: File?
  inputBinding:
    prefix: --header
- id: in_bam
  doc: Input BAM file(s). If absent then defaults to stdin.
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/bamkit:16.07.26--py_0
cwlVersion: v1.1
baseCommand:
- bamtofastq.py
