class: CommandLineTool
id: out_to_chain.py.cwl
inputs:
- id: in_speciesnames_respectively_default
  doc: "SPECIES\nNames of target and query species (respectively) in\nthe alignment.\
    \ (default: ['homo_sapiens',\n'mus_musculus'])"
  type: string?
  inputBinding:
    prefix: --species
- id: in_chr_sizes
  doc: "CHRSIZES\nChromosome sizes for the given species. (default:\nNone)"
  type: string?
  inputBinding:
    prefix: --chrsizes
- id: in_output
  doc: 'Output file (default: stdout)'
  type: File?
  inputBinding:
    prefix: --output
- id: in_var_3
  doc: ''
  type: string?
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: 'Output file (default: stdout)'
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/bx-python:0.8.11--py36h5e0341f_0
cwlVersion: v1.1
baseCommand:
- out_to_chain.py
