class: CommandLineTool
id: taxaranks.cwl
inputs:
- id: in_file_can_list
  doc: "A file can be a list of ncbi taxa id or species names (or higher\nranks, e.g.\
    \ Family, Order), or a mixture of them."
  type: File
  inputBinding:
    prefix: -i
- id: in_outfile
  doc: outfile
  type: File
  inputBinding:
    prefix: -o
- id: in_verbose_output
  doc: verbose output
  type: boolean
  inputBinding:
    prefix: -v
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- taxaranks
