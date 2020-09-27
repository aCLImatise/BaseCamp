class: CommandLineTool
id: dtd2xsd.cwl
inputs:
- id: in_instance_xml_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_output_xsd_file
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- dtd2xsd
