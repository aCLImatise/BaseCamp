class: CommandLineTool
id: RNAalisplit.pl.cwl
inputs:
- id: aln
  doc: A multiple sequence alignment in ClustalW format
  type: boolean
  inputBinding:
    prefix: --aln
- id: method
  doc: "Method to compute pairwise ditances. Available options are 'dHn', 'dHx', 'dBp',\
    \ and 'SCI'. The first and second compute pairwise Hamming distances of sequences,\
    \ where 'dHn' replaces gaps with 'N', whereas 'dHx' removes all gap columns (is\
    \ not yet implemented). 'dBp' folds RNA sequences into thir MFE structures and\
    \ computes pairwise base pair distances. 'SCI' computes the distance as 1-log(SCI),\
    \ based on a truncated strucure conservation index of two sequences. The latter,\
    \ however, is not a metric and therefore often results in negative branch lengths\
    \ in Neighbor Joining trees. Use with caution. [default: 'dHn']"
  type: boolean
  inputBinding:
    prefix: --method
- id: no_ribo_sum
  doc: 'Turn off ribosum scoring for RNAalifold computation. Default: ribosum scoring
    on'
  type: boolean
  inputBinding:
    prefix: --noribosum
- id: rs_cape_stat
  doc: "R-scape covariation statistic. Allowed values are: 'GT', 'MI', 'MIr', 'MIg',\
    \ 'CHI', 'OMES', 'RAF', 'RAFS'. Appending either 'p' or 'a' to any of them calculates\
    \ its average product correction and average sum correction, respctively (e.g.\
    \ GTp or GTa). See the R-scape manual for details."
  type: boolean
  inputBinding:
    prefix: --rscapestat
- id: out
  doc: Output base directory. Temporary data and results will be written to this directory
  type: boolean
  inputBinding:
    prefix: --out
outputs: []
cwlVersion: v1.1
baseCommand:
- RNAalisplit.pl
