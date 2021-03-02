class: CommandLineTool
id: NGSDImportOMIM.cwl
inputs:
- id: in_gene
  doc: OMIM 'mim2gene.txt' file from 'http://omim.org/downloads/'.
  type: File?
  inputBinding:
    prefix: -gene
- id: in_morbid
  doc: OMIM 'morbidmap.txt' file from 'http://omim.org/downloads/'.
  type: File?
  inputBinding:
    prefix: -morbid
- id: in_test
  doc: "Uses the test database instead of on the production database.\nDefault value:\
    \ 'false'"
  type: boolean?
  inputBinding:
    prefix: -test
- id: in_force
  doc: "If set, overwrites old data.\nDefault value: 'false'"
  type: boolean?
  inputBinding:
    prefix: -force
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
- NGSDImportOMIM
