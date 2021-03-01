class: CommandLineTool
id: NGSDImportQC.cwl
inputs:
- id: in_obo
  doc: HPO ontology file from 'https://github.com/imgag/megSAP/raw/master/data/misc/qc-cv.obo'.
  type: File?
  inputBinding:
    prefix: -obo
- id: in_test
  doc: "Uses the test database instead of on the production database.\nDefault value:\
    \ 'false'"
  type: boolean?
  inputBinding:
    prefix: -test
- id: in_debug
  doc: "Enable debug output.\nDefault value: 'false'"
  type: boolean?
  inputBinding:
    prefix: -debug
- id: in_changelog
  doc: Prints changeloge and exits.
  type: boolean?
  inputBinding:
    prefix: --changelog
- id: in_tdx
  doc: Writes a Tool Definition Xml file. The file name is the application name with
    the suffix '.tdx'.
  type: boolean?
  inputBinding:
    prefix: --tdx
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/ngs-bits:2020_12--py39h5902420_0
cwlVersion: v1.1
baseCommand:
- NGSDImportQC
