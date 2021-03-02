class: CommandLineTool
id: anvi_gen_phylogenomic_tree.cwl
inputs:
- id: in_output_file
  doc: 'File path to store results. (default: None)'
  type: File?
  inputBinding:
    prefix: --output-file
- id: in_program
  doc: 'Program name. (default: default)'
  type: string?
  inputBinding:
    prefix: --program
- id: in_f
  doc: ''
  type: string?
  inputBinding:
    prefix: -f
- id: in_clusters
  doc: "-f FASTA, --fasta-file FASTA\nA FASTA-formatted input file (default: None)"
  type: string
  inputBinding:
    position: 0
- id: in_concatenated_gene_alignment_fast_a
  doc: '🍕 Can provide: '
  type: string
  inputBinding:
    position: 0
- id: in_phylogeny
  doc: '🍺 More on `anvi-gen-phylogenomic-tree`:'
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file
  doc: 'File path to store results. (default: None)'
  type: File?
  outputBinding:
    glob: $(inputs.in_output_file)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/anvio-minimal:7--py_0
cwlVersion: v1.1
baseCommand:
- anvi-gen-phylogenomic-tree
