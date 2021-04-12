class: CommandLineTool
id: annotate.cwl
inputs:
- id: in_kegg
  doc: (if the -g/--go is specified, the -k/--kegg are ignored)
  type: File?
  inputBinding:
    prefix: --kegg
- id: in_network
  doc: (if -n is specified, the -m is ignored)
  type: File?
  inputBinding:
    prefix: --network
- id: in_pval
  doc: 'p value cutoff (default: 0.05)'
  type: long?
  inputBinding:
    prefix: --pval
- id: in_output
  doc: 'cpu cores (default: 2)'
  type: Directory?
  inputBinding:
    prefix: --output
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: 'cpu cores (default: 2)'
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/gcen:0.5.1--hc9558a2_0
cwlVersion: v1.1
baseCommand:
- annotate
