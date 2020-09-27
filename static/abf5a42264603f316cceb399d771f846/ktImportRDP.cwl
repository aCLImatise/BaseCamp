class: CommandLineTool
id: ktImportRDP.cwl
inputs:
- id: in_rdp_details
  doc: "RDP assignment details downloaded as text from the RDP\nClassifier web portal\
    \ or output by the command line RDP\nClassifier or Multiclassifier. By default,\
    \ separate datasets\nwill be created for each input (see [-c])."
  type: string
  inputBinding:
    position: 0
- id: in_name
  doc: "A name to show in the list of datasets in the Krona chart (if\nmultiple input\
    \ files are present and [-c] is not specified). By\ndefault, the basename of the\
    \ file will be used.\n_________"
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- ktImportRDP
