class: CommandLineTool
id: simpleContigLoader.cwl
inputs:
- id: in_be_verbose
  doc: Be Verbose
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_append_contigs_instead
  doc: Append contigs instead of overwriting them
  type: boolean?
  inputBinding:
    prefix: -a
- id: in_use_read_eids
  doc: Use read eids instead of iids
  type: boolean?
  inputBinding:
    prefix: -e
- id: in_bank_path
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: in_contig_file
  doc: ''
  type: File
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- simpleContigLoader
