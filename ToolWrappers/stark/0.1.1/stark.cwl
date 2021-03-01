class: CommandLineTool
id: stark.cwl
inputs:
- id: in_input
  doc: use FILE for input
  type: File?
  inputBinding:
    prefix: --input
- id: in_output
  doc: use FILE for output
  type: File?
  inputBinding:
    prefix: --output
- id: in_log
  doc: use LEVEL for log level (0=OFF, 1000=ALL)
  type: long?
  inputBinding:
    prefix: --log
- id: in_merge_type
  doc: use TYPE for merging (0=no merge, 1=only node reducing merges, 2=all merges)
  type: long?
  inputBinding:
    prefix: --merge-type
- id: in_unify_before_run
  doc: unify input file unitigs before use
  type: boolean?
  inputBinding:
    prefix: --unify-before-run
- id: in_statistics
  doc: print statistics (0=no statistics, 1=trivial statistics, 2=cpu-consuming statistics)
  type: long?
  inputBinding:
    prefix: --statistics
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: use FILE for output
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints: []
cwlVersion: v1.1
baseCommand:
- stark
