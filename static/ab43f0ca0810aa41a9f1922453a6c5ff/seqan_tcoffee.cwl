class: CommandLineTool
id: seqan_tcoffee.cwl
inputs:
- id: in_version_check
  doc: "Turn this option off to disable version update notifications of the\napplication.\
    \ One of 1, ON, TRUE, T, YES, 0, OFF, FALSE, F, and NO.\nDefault: 1."
  type: boolean?
  inputBinding:
    prefix: --version-check
- id: in_seq
  doc: "Name of multi-fasta input file. Valid filetypes are: .frn, .fna,\n.ffn, .fasta,\
    \ .faa, and .fa."
  type: File?
  inputBinding:
    prefix: --seq
- id: in_alphabet
  doc: "The used sequence alphabet. One of protein, dna, rna, and iupac.\nDefault:\
    \ protein."
  type: string?
  inputBinding:
    prefix: --alphabet
- id: in_outfile
  doc: "Name of the output file. Valid filetypes are: .msf, .frn, .fna,\n.ffn, .fasta,\
    \ .faa, and .fa. Default: out.fasta."
  type: File?
  inputBinding:
    prefix: --outfile
- id: in_method
  doc: "of STRING's\nDefines the generation method for matches. To select multiple\n\
    generation methods recall this option with different arguments. One\nof global,\
    \ local, overlap, and lcs. Default: global and local."
  type: string?
  inputBinding:
    prefix: --method
- id: in_libraries
  doc: "of INPUT_FILE's\nName of match file. To select multiple files recall this\
    \ option with\ndifferent arguments. Valid filetypes are: .mums, .lib, .blast,\
    \ and\n.aln."
  type: File?
  inputBinding:
    prefix: --libraries
- id: in_pairwise_alignment
  doc: "Pairwise alignment method. Default: unbanded for usual alignments (<\n50 sequences),\
    \ banded for deep alignments (>= 50 sequences) One of\nunbanded and banded."
  type: long?
  inputBinding:
    prefix: --pairwise-alignment
- id: in_band_width
  doc: "Band width. This option automatically select banded pairwise\nalignment (see\
    \ pa for details) In range [2..inf]. Default: 60."
  type: long?
  inputBinding:
    prefix: --band-width
- id: in_gop
  doc: 'gap open penalty Default: -13.'
  type: long?
  inputBinding:
    prefix: --gop
- id: in_gex
  doc: 'gap extension penalty Default: -1.'
  type: long?
  inputBinding:
    prefix: --gex
- id: in_matrix
  doc: 'score matrix Default: Blosum62.'
  type: long?
  inputBinding:
    prefix: --matrix
- id: in_msc
  doc: 'match score Default: 5.'
  type: long?
  inputBinding:
    prefix: --msc
- id: in_mmsc
  doc: 'mismatch penalty Default: -4.'
  type: long?
  inputBinding:
    prefix: --mmsc
- id: in_use_tree
  doc: Name of the file containing the Newick Guide Tree.
  type: File?
  inputBinding:
    prefix: --usetree
- id: in_build
  doc: "Method to build the tree. Following methods are provided:\nNeighbor-Joining\
    \ (nj), UPGMA single linkage (min), UPGMA complete\nlinkage (max), UPGMA average\
    \ linkage (avg), UPGMA weighted average\nlinkage (wavg). Neighbor-Joining creates\
    \ an unrooted tree, which we\nroot at the last joined pair. One of nj, min, max,\
    \ avg, and wavg.\nDefault: nj."
  type: long?
  inputBinding:
    prefix: --build
- id: in_in_file
  doc: "Name of the alignment file <FASTA FILE> Valid filetypes are: .frn,\n.fna,\
    \ .ffn, .fasta, .faa, and .fa."
  type: File?
  inputBinding:
    prefix: --infile
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outfile
  doc: "Name of the output file. Valid filetypes are: .msf, .frn, .fna,\n.ffn, .fasta,\
    \ .faa, and .fa. Default: out.fasta."
  type: File?
  outputBinding:
    glob: $(inputs.in_outfile)
hints: []
cwlVersion: v1.1
baseCommand:
- seqan_tcoffee
