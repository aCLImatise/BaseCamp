class: CommandLineTool
id: FilterGridSeeds.cwl
inputs:
- id: in_string_target_file
  doc: '<string> : target fasta file'
  type: boolean?
  inputBinding:
    prefix: -t
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- FilterGridSeeds
