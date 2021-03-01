class: CommandLineTool
id: abyss_fixmate.cwl
inputs:
- id: in_no_qname
  doc: set the qname to * [default]
  type: boolean?
  inputBinding:
    prefix: --no-qname
- id: in_qname
  doc: do not alter the qname
  type: boolean?
  inputBinding:
    prefix: --qname
- id: in_all
  doc: print all alignments
  type: boolean?
  inputBinding:
    prefix: --all
- id: in_diff
  doc: "print alignments that align to different\ncontigs [default]"
  type: boolean?
  inputBinding:
    prefix: --diff
- id: in_min_align
  doc: the minimal alignment size [1]
  type: long?
  inputBinding:
    prefix: --min-align
- id: in_same
  doc: write properly-paired reads to this file
  type: File?
  inputBinding:
    prefix: --same
- id: in_hist
  doc: write the fragment size histogram to FILE
  type: File?
  inputBinding:
    prefix: --hist
- id: in_cov
  doc: write the physical coverage to FILE
  type: File?
  inputBinding:
    prefix: --cov
- id: in_verbose
  doc: display verbose output
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_db
  doc: specify path of database repository in FILE
  type: File?
  inputBinding:
    prefix: --db
- id: in_library
  doc: specify library NAME for sqlite
  type: string?
  inputBinding:
    prefix: --library
- id: in_strain
  doc: specify strain NAME for sqlite
  type: string?
  inputBinding:
    prefix: --strain
- id: in_species
  doc: specify species NAME for sqlite
  type: string?
  inputBinding:
    prefix: --species
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/abyss:2.2.5--ha4ec83a_0
cwlVersion: v1.1
baseCommand:
- abyss-fixmate
