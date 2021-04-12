class: CommandLineTool
id: rwr.cwl
inputs:
- id: in_network
  doc: 'restart probability (default: 0.5)'
  type: File?
  inputBinding:
    prefix: --network
- id: in_prob
  doc: 'probability cutoff (defalut: 0.01)'
  type: long?
  inputBinding:
    prefix: --prob
- id: in_directed_network
  doc: 'input network is directed (defalut: the input network is undirected)'
  type: File?
  inputBinding:
    prefix: --directed_network
- id: in_weighted_network
  doc: 'edge weights of network will be considered (defalut: all edge weights of network
    are set to 1.0)'
  type: double?
  inputBinding:
    prefix: --weighted_network
- id: in_weighted_gene
  doc: 'weights of seed genes will be considered (defalut: all weights of seed genes
    are set to 1.0)'
  type: double?
  inputBinding:
    prefix: --weighted_gene
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_directed_network
  doc: 'input network is directed (defalut: the input network is undirected)'
  type: File?
  outputBinding:
    glob: $(inputs.in_directed_network)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/gcen:0.5.1--hc9558a2_0
cwlVersion: v1.1
baseCommand:
- rwr
