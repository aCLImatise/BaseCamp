class: CommandLineTool
id: seqan_tcoffee.cwl
inputs:
- id: version_check
  doc: 'Turn this option off to disable version update notifications of the application.
    One of 1, ON, TRUE, T, YES, 0, OFF, FALSE, F, and NO. Default: 1.'
  type: boolean
  inputBinding:
    prefix: --version-check
- id: seq
  doc: 'Name of multi-fasta input file. Valid filetypes are: .frn, .fna, .ffn, .fasta,
    .faa, and .fa.'
  type: string
  inputBinding:
    prefix: --seq
- id: alphabet
  doc: 'The used sequence alphabet. One of protein, dna, rna, and iupac. Default:
    protein.'
  type: string
  inputBinding:
    prefix: --alphabet
- id: outfile
  doc: 'Name of the output file. Valid filetypes are: .msf, .frn, .fna, .ffn, .fasta,
    .faa, and .fa. Default: out.fasta.'
  type: string
  inputBinding:
    prefix: --outfile
- id: pairwise_alignment
  doc: 'Pairwise alignment method. Default: unbanded for usual alignments (< 50 sequences),
    banded for deep alignments (>= 50 sequences) One of unbanded and banded.'
  type: string
  inputBinding:
    prefix: --pairwise-alignment
- id: band_width
  doc: 'Band width. This option automatically select banded pairwise alignment (see
    pa for details) In range [2..inf]. Default: 60.'
  type: long
  inputBinding:
    prefix: --band-width
- id: gop
  doc: 'gap open penalty Default: -13.'
  type: long
  inputBinding:
    prefix: --gop
- id: gex
  doc: 'gap extension penalty Default: -1.'
  type: long
  inputBinding:
    prefix: --gex
- id: matrix
  doc: 'score matrix Default: Blosum62.'
  type: string
  inputBinding:
    prefix: --matrix
- id: msc
  doc: 'match score Default: 5.'
  type: long
  inputBinding:
    prefix: --msc
- id: mmsc
  doc: 'mismatch penalty Default: -4.'
  type: long
  inputBinding:
    prefix: --mmsc
- id: use_tree
  doc: Name of the file containing the Newick Guide Tree.
  type: string
  inputBinding:
    prefix: --usetree
- id: build
  doc: 'Method to build the tree. Following methods are provided: Neighbor-Joining
    (nj), UPGMA single linkage (min), UPGMA complete linkage (max), UPGMA average
    linkage (avg), UPGMA weighted average linkage (wavg). Neighbor-Joining creates
    an unrooted tree, which we root at the last joined pair. One of nj, min, max,
    avg, and wavg. Default: nj.'
  type: string
  inputBinding:
    prefix: --build
- id: in_file
  doc: 'Name of the alignment file <FASTA FILE> Valid filetypes are: .frn, .fna, .ffn,
    .fasta, .faa, and .fa.'
  type: string
  inputBinding:
    prefix: --infile
outputs: []
cwlVersion: v1.1
baseCommand:
- seqan_tcoffee
