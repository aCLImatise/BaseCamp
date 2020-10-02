class: CommandLineTool
id: anvi_gen_phylogenomic_tree.cwl
inputs:
- id: in_output_file
  doc: File path to store results.
  type: File
  inputBinding:
    prefix: --output-file
- id: in_program
  doc: "Program name.\n"
  type: string
  inputBinding:
    prefix: --program
- id: in_f
  doc: ''
  type: string
  inputBinding:
    prefix: -f
- id: in_clusters
  doc: "-f FASTA, --fasta-file FASTA\nA FASTA-formatted input file"
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file
  doc: File path to store results.
  type: File
  outputBinding:
    glob: $(inputs.in_output_file)
cwlVersion: v1.1
baseCommand:
- anvi-gen-phylogenomic-tree
