class: CommandLineTool
id: surpyvor_purge2d.cwl
inputs:
- id: in_verbose
  doc: Print out more information while running.
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_output
  doc: "sam/bam file to write filtered alignments to [stdout]\n"
  type: File
  inputBinding:
    prefix: --output
- id: in_bam
  doc: bam file to filter
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- surpyvor
- purge2d
