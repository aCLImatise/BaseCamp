class: CommandLineTool
id: dbxreport.cwl
inputs:
- id: in_outfile
  doc: outfile    [*.dbxreport] Output file name
  type: File?
  inputBinding:
    prefix: -outfile
- id: in_index_dir
  doc: directory  Index directory (optional)
  type: boolean?
  inputBinding:
    prefix: -indexdir
- id: in_full_report
  doc: boolean    [N] Write full details to debug file
  type: boolean?
  inputBinding:
    prefix: -fullreport
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outfile
  doc: outfile    [*.dbxreport] Output file name
  type: File?
  outputBinding:
    glob: $(inputs.in_outfile)
hints: []
cwlVersion: v1.1
baseCommand:
- dbxreport
