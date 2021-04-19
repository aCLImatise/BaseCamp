class: CommandLineTool
id: orsum.py.cwl
inputs:
- id: in_gmt
  doc: path for the the GMT file
  type: File?
  inputBinding:
    prefix: --gmt
- id: in_hierarchy_file
  doc: path for the hierarchy file
  type: File?
  inputBinding:
    prefix: --hierarchyFile
- id: in_create_hf
  doc: "Creates the hierarchy file when this is written,\notherwise tries to read,\
    \ if absent creates it."
  type: boolean?
  inputBinding:
    prefix: --createHF
- id: in_files
  doc: paths for the enrichment result files
  type: string[]
  inputBinding:
    prefix: --files
- id: in_output_folder
  doc: paths for the enrichment result files
  type: Directory?
  inputBinding:
    prefix: --outputFolder
- id: in_rules
  doc: "[RULES ...]   List of ordered numbers of the rules to apply while\nsummarizing.\
    \ First rule is numbered 1. It should be\nrun first."
  type: boolean?
  inputBinding:
    prefix: --rules
- id: in_max_rep_size
  doc: "The maximum size of a representative term. Terms\nbigger than this will not\
    \ be discarded but also will\nnot be used to represent other terms\n"
  type: long?
  inputBinding:
    prefix: --maxRepSize
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_folder
  doc: paths for the enrichment result files
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output_folder)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/orsum:1.0.0--hdfd78af_0
cwlVersion: v1.1
baseCommand:
- orsum.py
