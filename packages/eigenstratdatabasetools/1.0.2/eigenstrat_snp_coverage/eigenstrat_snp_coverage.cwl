class: CommandLineTool
id: eigenstrat_snp_coverage.cwl
inputs:
- id: in_input
  doc: "The desired input file prefix. Input files are assumed\nto be <INPUT PREFIX>.geno,\
    \ <INPUT PREFIX>.snp and\n<INPUT PREFIX>.ind ."
  type: File?
  inputBinding:
    prefix: --Input
- id: in_suffix
  doc: "The suffix (if any) that follows .geno/.snp/.ind in\nthe input files. For\
    \ example, specifying '-s .txt'\nwill treat <INPUT PREFIX>.{geno,snp,ind}.txt\
    \ as the\ndesired input files."
  type: File?
  inputBinding:
    prefix: --Suffix
- id: in_output
  doc: "The filepath where the output table should be saved.\nOmit to print to stdout."
  type: File?
  inputBinding:
    prefix: --Output
- id: in_json
  doc: "Create additional json formatted output file named\n<JSON OUTPUT FILEPATH>\
    \ ."
  type: File?
  inputBinding:
    prefix: --json
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: "The filepath where the output table should be saved.\nOmit to print to stdout."
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
- id: out_json
  doc: "Create additional json formatted output file named\n<JSON OUTPUT FILEPATH>\
    \ ."
  type: File?
  outputBinding:
    glob: $(inputs.in_json)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/eigenstratdatabasetools:1.0.2--0
cwlVersion: v1.1
baseCommand:
- eigenstrat_snp_coverage
