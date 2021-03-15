class: CommandLineTool
id: VariantRanking.cwl
inputs:
- id: in_in
  doc: Input variant list in GSvar format.
  type: File?
  inputBinding:
    prefix: -in
- id: in_hpo_ids
  doc: Comma-separated list of HPO identifiers.
  type: string?
  inputBinding:
    prefix: -hpo_ids
- id: in_out
  doc: Output variant list in GSvar format.
  type: File?
  inputBinding:
    prefix: -out
- id: in_algorithm
  doc: "Algorithm used for ranking.\nDefault value: 'GSvar_v1'\nValid: 'GSvar_v1,GSvar_v1_noNGSD'"
  type: long?
  inputBinding:
    prefix: -algorithm
- id: in_add_explaination
  doc: "Add a third column with an explaination how that score was calculated.\nDefault\
    \ value: 'false'"
  type: boolean?
  inputBinding:
    prefix: -add_explaination
- id: in_use_blacklist
  doc: "Use variant blacklist from settings.ini file.\nDefault value: 'false'"
  type: boolean?
  inputBinding:
    prefix: -use_blacklist
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
  dockerPull: quay.io/biocontainers/ngs-bits:2021_03--py39h5902420_0
cwlVersion: v1.1
baseCommand:
- VariantRanking
