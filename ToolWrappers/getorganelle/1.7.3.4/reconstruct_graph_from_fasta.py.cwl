class: CommandLineTool
id: reconstruct_graph_from_fasta.py.cwl
inputs:
- id: in_input_fasta_file
  doc: Input fasta file.
  type: File?
  inputBinding:
    prefix: -i
- id: in_output_graph_file
  doc: "Output graph file. The output format is GFA by\ndefault, but FASTG only when\
    \ indicated with postfix\n'.fastg'."
  type: File?
  inputBinding:
    prefix: -o
- id: in_overlap
  doc: overlap for reconstructing De Bruijn graph. Default:55
  type: long?
  inputBinding:
    prefix: --overlap
- id: in_circular
  doc: "Sequences in input fasta file are all circular\n(yes/no/auto). The auto mode\
    \ enables detection by\nchecking the existence of '(circular)' in the end of\n\
    the header of each sequence. Default:auto"
  type: File?
  inputBinding:
    prefix: --circular
- id: in_single_chain
  doc: "The input sequence(s) was by default treated as DNA\ndouble-chain with its\
    \ complementary sequence. Choose\nthis flag to turn off."
  type: boolean?
  inputBinding:
    prefix: --single-chain
- id: in_out_kg
  doc: Output kmer node graph.
  type: string?
  inputBinding:
    prefix: --out-kg
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_graph_file
  doc: "Output graph file. The output format is GFA by\ndefault, but FASTG only when\
    \ indicated with postfix\n'.fastg'."
  type: File?
  outputBinding:
    glob: $(inputs.in_output_graph_file)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/getorganelle:1.7.3.4--pyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- reconstruct_graph_from_fasta.py
