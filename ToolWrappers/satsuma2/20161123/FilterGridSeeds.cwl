class: CommandLineTool
id: FilterGridSeeds.cwl
inputs:
- id: in_string_fasta_file
  doc: '<string> : target fasta file'
  type: boolean
  inputBinding:
    prefix: -t
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- FilterGridSeeds
