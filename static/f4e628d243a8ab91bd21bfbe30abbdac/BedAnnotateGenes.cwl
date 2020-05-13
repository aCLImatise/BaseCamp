class: CommandLineTool
id: BedAnnotateGenes.cwl
inputs:
- id: in
  doc: "Input BED file. If unset, reads from STDIN. Default value: ''"
  type: File
  inputBinding:
    prefix: -in
- id: out
  doc: "Output BED file. If unset, writes to STDOUT. Default value: ''"
  type: File
  inputBinding:
    prefix: -out
- id: extend
  doc: "The number of bases to extend the gene regions before annotation. Default\
    \ value: '0'"
  type: long
  inputBinding:
    prefix: -extend
- id: test
  doc: "Uses the test database instead of on the production database. Default value:\
    \ 'false'"
  type: boolean
  inputBinding:
    prefix: -test
- id: clear
  doc: "Clear all annotations present in the input file. Default value: 'false'"
  type: boolean
  inputBinding:
    prefix: -clear
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
- BedAnnotateGenes
