class: CommandLineTool
id: remove_fragment.cwl
inputs:
- id: in_one_uid_line
  doc: one uid per line
  type: File?
  inputBinding:
    prefix: -f
- id: in_fragments_input
  doc: fragments input
  type: string?
  inputBinding:
    prefix: -i
- id: in_fragments_not_listed_uidfile_saved_here
  doc: fragments NOT listed in UIDfile are saved here
  type: string?
  inputBinding:
    prefix: -o
- id: in_fragments__listed_uidfile_saved_here
  doc: fragments     listed in UIDfile are saved here
  type: string?
  inputBinding:
    prefix: -O
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- remove_fragment
