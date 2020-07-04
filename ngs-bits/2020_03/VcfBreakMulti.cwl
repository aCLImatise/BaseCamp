class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/VcfBreakMulti.cwl
inputs:
- id: in
  doc: "Input VCF file. If unset, reads from STDIN. Default value: ''"
  type: File
  inputBinding:
    prefix: -in
- id: out
  doc: "Output VCF list. If unset, writes to STDOUT. Default value: ''"
  type: File
  inputBinding:
    prefix: -out
- id: no_errors
  doc: "Ignore VCF format errors if possible. Default value: 'false'"
  type: boolean
  inputBinding:
    prefix: -no_errors
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
- VcfBreakMulti
