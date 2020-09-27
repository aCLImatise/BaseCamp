class: CommandLineTool
id: hotspot3d_sigclus.cwl
inputs:
- id: in_prep_dir
  doc: Preprocessing directory
  type: boolean
  inputBinding:
    prefix: --prep-dir
- id: in_pairwise
  doc: Pairwise file (pancan19.pairwise)
  type: boolean
  inputBinding:
    prefix: --pairwise
- id: in_clusters
  doc: Cluster file (pancan19.intra.20..05.10.clusters)
  type: boolean
  inputBinding:
    prefix: --clusters
- id: in_output
  doc: Output file prefix (pancan19.intra.20..05.10)
  type: File
  inputBinding:
    prefix: --output
- id: in_simulations
  doc: Number of simulations, default = 1000000
  type: boolean
  inputBinding:
    prefix: --simulations
- id: in_usage
  doc: 'Usage: hotspot3d sigclus [options]'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: Output file prefix (pancan19.intra.20..05.10)
  type: File
  outputBinding:
    glob: $(inputs.in_output)
cwlVersion: v1.1
baseCommand:
- hotspot3d
- sigclus
