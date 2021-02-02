class: CommandLineTool
id: gmgc_mapper.cwl
inputs:
- id: in_input
  doc: 'Path to the input genome FASTA file. (default: None)'
  type: File
  inputBinding:
    prefix: --input
- id: in_output
  doc: "Output directory (will be created if non-existent)\n(default: None)"
  type: Directory
  inputBinding:
    prefix: --output
- id: in_nt_genes
  doc: "Path to the input DNA gene file (FASTA format)\n(default: None)"
  type: File
  inputBinding:
    prefix: --nt-genes
- id: in_aa_genes
  doc: "Path to the input amino acid gene file (FASTA format)\n(default: None)\n"
  type: File
  inputBinding:
    prefix: --aa-genes
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: "Output directory (will be created if non-existent)\n(default: None)"
  type: Directory
  outputBinding:
    glob: $(inputs.in_output)
cwlVersion: v1.1
baseCommand:
- gmgc-mapper
