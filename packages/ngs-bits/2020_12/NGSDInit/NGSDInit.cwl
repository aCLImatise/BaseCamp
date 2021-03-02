class: CommandLineTool
id: NGSDInit.cwl
inputs:
- id: in_add
  doc: "Additional SQL script to execute after database initialization.\nDefault value:\
    \ ''"
  type: File?
  inputBinding:
    prefix: -add
- id: in_force
  doc: "Database password needed to re-initialize the production database.\nDefault\
    \ value: ''"
  type: string?
  inputBinding:
    prefix: -force
- id: in_test
  doc: "Uses the test database instead of on the production database.\nDefault value:\
    \ 'false'"
  type: boolean?
  inputBinding:
    prefix: -test
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
- NGSDInit
