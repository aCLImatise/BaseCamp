class: CommandLineTool
id: skipredundant.cwl
inputs:
- id: in_mode
  doc: "menu       [1] This option specifies whether to remove\nredundancy at a single\
    \ threshold percentage\nsequence similarity or remove redundancy\noutside a range\
    \ of acceptable threshold\npercentage similarity. All permutations of\npair-wise\
    \ sequence alignments are calculated\nfor each set of input sequences in turn\n\
    using the EMBOSS implementation of the\nNeedleman and Wunsch global alignment\n\
    algorithm. Redundant sequences are removed\nin one of two modes as follows: (i)\
    \ If a\npair of proteins achieve greater than a\nthreshold percentage sequence\
    \ similarity\n(specified by the user) the shortest\nsequence is discarded. (ii)\
    \ If a pair of\nproteins have a percentage sequence\nsimilarity that lies outside\
    \ an acceptable\nrange (specified by the user) the shortest\nsequence is discarded.\
    \ (Values: 1 (Single\nthreshold percentage sequence similarity); 2\n(Outside a\
    \ range of acceptable threshold\npercentage similarities))"
  type: boolean
  inputBinding:
    prefix: -mode
- id: in_gap_open
  doc: "float      [10.0 for any sequence] The gap open penalty\nis the score taken\
    \ away when a gap is\ncreated. The best value depends on the\nchoice of comparison\
    \ matrix. The default\nvalue assumes you are using the EBLOSUM62\nmatrix for protein\
    \ sequences, and the\nEDNAFULL matrix for nucleotide sequences.\n(Floating point\
    \ number from 1.0 to 100.0)"
  type: boolean
  inputBinding:
    prefix: -gapopen
- id: in_gap_extend
  doc: "float      [0.5 for any sequence] The gap extension,\npenalty is added to\
    \ the standard gap penalty\nfor each base or residue in the gap. This\nis how\
    \ long gaps are penalized. Usually you\nwill expect a few long gaps rather than\
    \ many\nshort gaps, so the gap extension penalty\nshould be lower than the gap\
    \ penalty. An\nexception is where one or both sequences are\nsingle reads with\
    \ possible sequencing\nerrors in which case you would expect many\nsingle base\
    \ gaps. You can get this result by\nsetting the gap open penalty to zero (or\n\
    very low) and using the gap extension\npenalty to control gap scoring. (Floating\n\
    point number from 0.0 to 10.0)"
  type: boolean
  inputBinding:
    prefix: -gapextend
- id: in_data_file
  doc: "matrixf    [EBLOSUM62 for protein, EDNAFULL for DNA]\nThis is the scoring\
    \ matrix file used when\ncomparing sequences. By default it is the\nfile 'EBLOSUM62'\
    \ (for proteins) or the file\n'EDNAFULL' (for nucleic sequences). These\nfiles\
    \ are found in the 'data' directory of\nthe EMBOSS installation."
  type: boolean
  inputBinding:
    prefix: -datafile
- id: in_feature
  doc: "toggle     Sequence feature information will be\nretained if this option is\
    \ set."
  type: boolean
  inputBinding:
    prefix: -feature
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- skipredundant
