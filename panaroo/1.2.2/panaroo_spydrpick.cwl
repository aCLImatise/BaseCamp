class: CommandLineTool
id: ../../../panaroo_spydrpick.cwl
inputs:
- id: in_quantile
  doc: "the quantile used to determine a threshold for keeping\nMI values (default=0.9)."
  type: double
  inputBinding:
    prefix: --quantile
- id: in_input
  doc: "gene presence absence file (.Rtab) generated by\nPanaroo"
  type: File
  inputBinding:
    prefix: --input
- id: in_out_dir
  doc: location of an output directory
  type: Directory
  inputBinding:
    prefix: --out_dir
- id: in_tree
  doc: "phylogeny in newick format for weigting samples to\ncontrol for population\
    \ structure"
  type: File
  inputBinding:
    prefix: --tree
- id: in_clusters
  doc: "sample clusters for weigting to control for population\nstructure. format:\
    \ 'sample_name,cluster_id'\n"
  type: File
  inputBinding:
    prefix: --clusters
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out_dir
  doc: location of an output directory
  type: Directory
  outputBinding:
    glob: $(inputs.in_out_dir)
cwlVersion: v1.1
baseCommand:
- panaroo-spydrpick
