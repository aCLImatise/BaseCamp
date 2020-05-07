class: CommandLineTool
id: NGSDImportQC.cwl
inputs:
- id: obo
  doc: HPO ontology file from 'https://github.com/imgag/megSAP/raw/master/data/misc/qc-cv.obo'.
  type: File
  inputBinding:
    prefix: -obo
- id: test
  doc: "Uses the test database instead of on the production database. Default value:\
    \ 'false'"
  type: boolean
  inputBinding:
    prefix: -test
- id: debug
  doc: "Enable debug output. Default value: 'false'"
  type: boolean
  inputBinding:
    prefix: -debug
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
- NGSDImportQC
