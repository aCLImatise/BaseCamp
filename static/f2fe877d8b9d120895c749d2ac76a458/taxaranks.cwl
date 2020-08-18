class: CommandLineTool
id: ../../../taxaranks.cwl
inputs:
- id: file_can_list
  doc: A file can be a list of ncbi taxa id or species names (or higher ranks, e.g.
    Family, Order), or a mixture of them.
  type: File
  inputBinding:
    prefix: -i
- id: outfile
  doc: outfile
  type: File
  inputBinding:
    prefix: -o
- id: verbose_output
  doc: verbose output
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- taxaranks
