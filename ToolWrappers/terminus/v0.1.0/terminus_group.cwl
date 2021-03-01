class: CommandLineTool
id: terminus_group.cwl
inputs:
- id: in_dir
  doc: directory to read input from
  type: Directory?
  inputBinding:
    prefix: --dir
- id: in_min_spread
  doc: "the minimum spread a transcript must exhibit to enable an attached edge to\
    \ be a\ncollapse candidate [default: 0.1]"
  type: long?
  inputBinding:
    prefix: --min-spread
- id: in_out
  doc: prefix where output would be written
  type: string?
  inputBinding:
    prefix: --out
- id: in_seed
  doc: "The allowable difference between the weights of transcripts in same equivalence\n\
    classes to treat them as identical [default: 10]"
  type: long?
  inputBinding:
    prefix: --seed
- id: in_tolerance
  doc: "The allowable difference between the weights of transcripts in same equivalence\n\
    classes to treat them as identical [default: 0.001]\n"
  type: double?
  inputBinding:
    prefix: --tolerance
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- terminus
- group
