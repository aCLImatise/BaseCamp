class: CommandLineTool
id: abyss_todot.cwl
inputs:
- id: in_km_er
  doc: "report the mean k-mer coverage, otherwise\nthe sum k-mer coverage is reported"
  type: string?
  inputBinding:
    prefix: --kmer
- id: in_adj
  doc: output the graph in adj format
  type: boolean?
  inputBinding:
    prefix: --adj
- id: in_as_qg
  doc: output the graph in asqg format
  type: boolean?
  inputBinding:
    prefix: --asqg
- id: in_dist
  doc: output the graph in dist format
  type: boolean?
  inputBinding:
    prefix: --dist
- id: in_dot
  doc: output the graph in GraphViz format [default]
  type: boolean?
  inputBinding:
    prefix: --dot
- id: in_gv
  doc: output the graph in GraphViz format
  type: boolean?
  inputBinding:
    prefix: --gv
- id: in_dot_mean_cov
  doc: same as above but give the mean coverage
  type: boolean?
  inputBinding:
    prefix: --dot-meancov
- id: in_gfa
  doc: output the graph in GFA1 format
  type: boolean?
  inputBinding:
    prefix: --gfa
- id: in_gfa_one
  doc: output the graph in GFA1 format
  type: boolean?
  inputBinding:
    prefix: --gfa1
- id: in_gfa_two
  doc: output the graph in GFA2 format
  type: boolean?
  inputBinding:
    prefix: --gfa2
- id: in_sam
  doc: output the graph in SAM format
  type: boolean?
  inputBinding:
    prefix: --sam
- id: in_estimate
  doc: distance estimates
  type: string?
  inputBinding:
    prefix: --estimate
- id: in_add_complements
  doc: missing complementary edges
  type: string?
  inputBinding:
    prefix: --add-complements
- id: in_verbose
  doc: display verbose output
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_file
  doc: ''
  type: File?
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/abyss:2.3.1--hd403d74_0
cwlVersion: v1.1
baseCommand:
- abyss-todot
