class: CommandLineTool
id: mono_xmltool.cwl
inputs:
- id: in_validate
  doc: '[*.rng | *.rnc | *.nvdl | *.xsd] [instances]'
  type: boolean?
  inputBinding:
    prefix: --validate
- id: in_validate_rng
  doc: '[instances]'
  type: string?
  inputBinding:
    prefix: --validate-rng
- id: in_validate_rnc
  doc: '[instances]'
  type: File?
  inputBinding:
    prefix: --validate-rnc
- id: in_validate_nv_dl
  doc: '[instances]'
  type: string?
  inputBinding:
    prefix: --validate-nvdl
- id: in_validate_xsd
  doc: '[instances]'
  type: string?
  inputBinding:
    prefix: --validate-xsd
- id: in_validate_xsd_two
  doc: '[instances] (in .NET 2.0 validator)'
  type: long?
  inputBinding:
    prefix: --validate-xsd2
- id: in_validate_dtd
  doc: instance-xml [output-xml]
  type: string?
  inputBinding:
    prefix: --validate-dtd
- id: in_pretty_print
  doc: '[source] [result]'
  type: boolean?
  inputBinding:
    prefix: --prettyprint
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- mono-xmltool
