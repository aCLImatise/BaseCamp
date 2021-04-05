class: CommandLineTool
id: poppunk_tsne.cwl
inputs:
- id: in_distances
  doc: "Prefix of input pickle and numpy file of pre-\ncalculated distances"
  type: File?
  inputBinding:
    prefix: --distances
- id: in_output
  doc: Name of output file
  type: File?
  inputBinding:
    prefix: --output
- id: in_perplexity
  doc: "Perplexity used to generate t-SNE projection [default\n= 30]"
  type: long?
  inputBinding:
    prefix: --perplexity
- id: in_verbosity
  doc: "Verbosity level for t-SNE (0-3) [default = 0]\n"
  type: long?
  inputBinding:
    prefix: --verbosity
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: Name of output file
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/poppunk:2.4.0--py39h7f0572b_0
cwlVersion: v1.1
baseCommand:
- poppunk_tsne
