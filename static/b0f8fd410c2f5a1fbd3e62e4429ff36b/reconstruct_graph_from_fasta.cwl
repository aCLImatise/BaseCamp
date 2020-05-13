class: CommandLineTool
id: reconstruct_graph_from_fasta.py.cwl
inputs:
- id: i
  doc: Input fasta file.
  type: string
  inputBinding:
    prefix: -i
- id: o
  doc: Output graph file. The output format is GFA by default, but FASTG only when
    indicated with postfix '.fastg'.
  type: string
  inputBinding:
    prefix: -o
- id: k
  doc: kmer for reconstructing De Bruijn graph. Default:55
  type: string
  inputBinding:
    prefix: -k
- id: circular
  doc: Sequences in input fasta file are all circular (yes/no/auto). The auto mode
    enables detection by checking the existence of '(circular)' in the end of the
    header of each sequence. Default:auto
  type: string
  inputBinding:
    prefix: --circular
- id: single_chain
  doc: The input sequence(s) was by default treated as DNA double-chain with its complementary
    sequence. Choose this flag to turn off.
  type: boolean
  inputBinding:
    prefix: --single-chain
- id: out_kg
  doc: Output kmer node graph.
  type: string
  inputBinding:
    prefix: --out-kg
outputs: []
cwlVersion: v1.1
baseCommand:
- reconstruct_graph_from_fasta.py
