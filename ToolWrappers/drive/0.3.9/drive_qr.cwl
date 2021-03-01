class: CommandLineTool
id: drive_qr.cwl
inputs:
- id: in_address
  doc: address on which the QR code generator is running (default "https://qr-server.herokuapp.com/drive")
  type: string?
  inputBinding:
    prefix: -address
- id: in_verbose
  doc: "show step by step information verbosely (default true)\n"
  type: boolean?
  inputBinding:
    prefix: -verbose
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- drive
- qr
