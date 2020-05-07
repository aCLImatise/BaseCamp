class: CommandLineTool
id: BedGeneOverlap.cwl
inputs:
- id: source
  doc: "Transcript source database. Valid: 'ccds,ensembl'"
  type: string
  inputBinding:
    prefix: -source
- id: in
  doc: "Input BED file. If unset, reads from STDIN. Default value: ''"
  type: File
  inputBinding:
    prefix: -in
- id: out
  doc: "Output TSV file. If unset, writes to STDOUT. Default value: ''"
  type: File
  inputBinding:
    prefix: -out
- id: test
  doc: "Uses the test database instead of on the production database. Default value:\
    \ 'false'"
  type: boolean
  inputBinding:
    prefix: -test
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
- BedGeneOverlap
