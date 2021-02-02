class: CommandLineTool
id: Compare.cwl
inputs:
- id: in_bam
  doc: ': bam file'
  type: File
  inputBinding:
    prefix: --bam
- id: in_list
  doc: ': list of regions (optional)'
  type: string
  inputBinding:
    prefix: --list
- id: in_in
  doc: ': <string> name of a sequence'
  type: boolean
  inputBinding:
    prefix: --in
- id: in_size
  doc: "size of boundaries\n"
  type: long
  inputBinding:
    prefix: --size
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- Compare
