class: CommandLineTool
id: VariantQC.cwl
inputs:
- id: in
  doc: Input variant list in VCF format.
  type: File
  inputBinding:
    prefix: -in
- id: ignore_filter
  doc: "Ignore filter entries, i.e. consider variants that did not pass filters. Default\
    \ value: 'false'"
  type: boolean
  inputBinding:
    prefix: -ignore_filter
- id: out
  doc: "Output qcML file. If unset, writes to STDOUT. Default value: ''"
  type: File
  inputBinding:
    prefix: -out
- id: txt
  doc: "Writes TXT format instead of qcML. Default value: 'false'"
  type: boolean
  inputBinding:
    prefix: -txt
- id: changelog
  doc: Prints changeloge and exits.
  type: boolean
  inputBinding:
    prefix: --changelog
- id: tdx
  doc: Writes a Tool Definition Xml file. The file name is the application name with
    the suffix '.tdx'.
  type: boolean
  inputBinding:
    prefix: --tdx
outputs: []
cwlVersion: v1.1
baseCommand:
- VariantQC
