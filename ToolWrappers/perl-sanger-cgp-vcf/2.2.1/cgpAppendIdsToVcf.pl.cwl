class: CommandLineTool
id: cgpAppendIdsToVcf.pl.cwl
inputs:
- id: in_file
  doc: (-i)       The file to append IDs to.
  type: boolean?
  inputBinding:
    prefix: --file
- id: in_outfile
  doc: (-o)       The output filename
  type: File?
  inputBinding:
    prefix: --outFile
- id: in_id_start
  doc: (-g)       Will set a sequential id generator to the given integer value. If
    not present will assign UUIDs to each variant.
  type: boolean?
  inputBinding:
    prefix: --idstart
- id: in_o
  doc: ''
  type: string?
  inputBinding:
    prefix: -o
- id: in_i
  doc: ''
  type: string?
  inputBinding:
    prefix: -i
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outfile
  doc: (-o)       The output filename
  type: File?
  outputBinding:
    glob: $(inputs.in_outfile)
hints: []
cwlVersion: v1.1
baseCommand:
- cgpAppendIdsToVcf.pl
