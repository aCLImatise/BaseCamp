class: CommandLineTool
id: linkage2allegro.cwl
inputs:
- id: in_h_haplofiled_descentfile
  doc: "-h haplofile\n-d descentfile\n"
  type: File
  inputBinding:
    prefix: -l
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- linkage2allegro
