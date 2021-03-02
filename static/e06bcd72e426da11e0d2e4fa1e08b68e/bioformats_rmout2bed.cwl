class: CommandLineTool
id: bioformats_rmout2bed.cwl
inputs:
- id: in_color
  doc: "how to choose colors of BED repeat records (default:\nclass)"
  type: string?
  inputBinding:
    prefix: --color
- id: in_name
  doc: "how to choose names of BED repeat records (default:\nid)"
  type: string?
  inputBinding:
    prefix: --name
- id: in_short
  doc: "output only repeat loci (the output is a BED3 file)\n(default: False)\n"
  type: File?
  inputBinding:
    prefix: --short
- id: in_v
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_rm_out_file
  doc: a RepeatMasker out file
  type: string
  inputBinding:
    position: 0
- id: in_bed_file
  doc: the output BED file
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_short
  doc: "output only repeat loci (the output is a BED3 file)\n(default: False)\n"
  type: File?
  outputBinding:
    glob: $(inputs.in_short)
hints: []
cwlVersion: v1.1
baseCommand:
- bioformats
- rmout2bed
