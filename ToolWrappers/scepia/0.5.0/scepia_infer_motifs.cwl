class: CommandLineTool
id: scepia_infer_motifs.cwl
inputs:
- id: in_transpose
  doc: Transpose matrix.
  type: boolean?
  inputBinding:
    prefix: --transpose
- id: in_cluster
  doc: "cluster name (default checks for 'louvain' or\n'leiden')."
  type: string?
  inputBinding:
    prefix: --cluster
- id: in_dataset
  doc: Reference dataset (ENCODE.H3K27ac.human).
  type: long?
  inputBinding:
    prefix: --dataset
- id: in_n_top_genes
  doc: "Maximum number of variable genes that is used\n(2000)."
  type: long?
  inputBinding:
    prefix: --n_top_genes
- id: in_pfm_file
  doc: Name of motif PFM file or GimmeMotifs database
  type: File?
  inputBinding:
    prefix: --pfmfile
- id: in_num_enhancers
  doc: "Number of enhancers to use for motif activity\n(10000)."
  type: long?
  inputBinding:
    prefix: --num_enhancers
- id: in_name_dot
  doc: -a, --min_annotated INTEGER  Minimum number of cells per cell type (50).
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/scepia:0.5.0--py_0
cwlVersion: v1.1
baseCommand:
- scepia
- infer_motifs
