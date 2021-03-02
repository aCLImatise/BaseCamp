class: CommandLineTool
id: rtg_sdf2sam.cwl
inputs:
- id: in_input
  doc: SDF containing sequences
  type: string?
  inputBinding:
    prefix: --input
- id: in_output
  doc: "output filename (extension added if not present). Use '-'\nto write to standard\
    \ output"
  type: File?
  inputBinding:
    prefix: --output
- id: in_end_id
  doc: exclusive upper bound on sequence id
  type: long?
  inputBinding:
    prefix: --end-id
- id: in_id_file
  doc: "file containing sequence ids, or sequence names if --names\nflag is set, one\
    \ per line"
  type: File?
  inputBinding:
    prefix: --id-file
- id: in_names
  doc: interpret supplied sequence as names instead of numeric
  type: boolean?
  inputBinding:
    prefix: --names
- id: in_no_gzip
  doc: do not gzip the output
  type: boolean?
  inputBinding:
    prefix: --no-gzip
- id: in_ids
  doc: --start-id=INT inclusive lower bound on sequence id
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: "output filename (extension added if not present). Use '-'\nto write to standard\
    \ output"
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints: []
cwlVersion: v1.1
baseCommand:
- rtg
- sdf2sam
