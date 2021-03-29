class: CommandLineTool
id: combine_bracken_outputs.py.cwl
inputs:
- id: in_files
  doc: Bracken output files to combine.
  type: string[]
  inputBinding:
    prefix: --files
- id: in_names
  doc: "Names for each input file - to be used in column\nheaders of output [separate\
    \ names with commas]"
  type: File?
  inputBinding:
    prefix: --names
- id: in_output
  doc: "Name of output file with combined Bracken results.\n"
  type: File?
  inputBinding:
    prefix: --output
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: "Name of output file with combined Bracken results.\n"
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/bracken:2.6.1--py38hed8969a_0
cwlVersion: v1.1
baseCommand:
- combine_bracken_outputs.py
