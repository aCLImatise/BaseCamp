class: CommandLineTool
id: gapToLift.cwl
inputs:
- id: in_chr
  doc: '- work only on given chrom'
  type: string
  inputBinding:
    prefix: -chr
- id: in_min_gap
  doc: '- examine gaps only >= than M'
  type: string
  inputBinding:
    prefix: -minGap
- id: in_insane
  doc: '- do *not* perform coordinate sanity checks on gaps'
  type: boolean
  inputBinding:
    prefix: -insane
- id: in_bed_file
  doc: '- output segments to fileName.bed'
  type: File
  inputBinding:
    prefix: -bedFile
- id: in_allow_bridged
  doc: '- consider any type of gap not just the non-bridged gaps'
  type: boolean
  inputBinding:
    prefix: -allowBridged
- id: in_verbose
  doc: '- N > 1 see more information about procedure'
  type: long
  inputBinding:
    prefix: -verbose
- id: in_db
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_lift_file_dot_lft
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_bed_file
  doc: '- output segments to fileName.bed'
  type: File
  outputBinding:
    glob: $(inputs.in_bed_file)
cwlVersion: v1.1
baseCommand:
- gapToLift
