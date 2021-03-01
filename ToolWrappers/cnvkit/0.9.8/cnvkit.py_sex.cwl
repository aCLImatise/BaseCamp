class: CommandLineTool
id: cnvkit.py_sex.cwl
inputs:
- id: in_haploid_x_reference
  doc: "Assume inputs were normalized to a male reference\n(i.e. female samples will\
    \ have +1 log-coverage of\nchrX; otherwise male samples would have -1 chrX)."
  type: boolean?
  inputBinding:
    prefix: --haploid-x-reference
- id: in_output
  doc: "Output table file name.\n"
  type: File?
  inputBinding:
    prefix: --output
- id: in_filenames
  doc: Copy number or copy ratio files (*.cnn, *.cnr).
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: "Output table file name.\n"
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/cnvkit:0.9.8--py_0
cwlVersion: v1.1
baseCommand:
- cnvkit.py
- sex
