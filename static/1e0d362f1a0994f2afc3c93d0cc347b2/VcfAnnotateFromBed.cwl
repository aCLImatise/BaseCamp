class: CommandLineTool
id: VcfAnnotateFromBed.cwl
inputs:
- id: bed
  doc: BED file used for annotation.
  type: File
  inputBinding:
    prefix: -bed
- id: name
  doc: Annotation name in output VCF file.
  type: string
  inputBinding:
    prefix: -name
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
- VcfAnnotateFromBed
