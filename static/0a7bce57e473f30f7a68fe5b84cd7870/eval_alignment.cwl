class: CommandLineTool
id: eval_alignment.pl.cwl
inputs:
- id: aln
  doc: A multiple sequence alignment in Stockholm format.
  type: boolean
  inputBinding:
    prefix: --aln
- id: statistic
  doc: "The covariation statistic used by R-scape. Allowed values are: 'GT', 'MI',\
    \ 'MIr', 'MIg', 'CHI', 'OMES', 'RAF', 'RAFS'. Appending either 'p' or 'a' to any\
    \ of them calculates its average product correction and average sum correction,\
    \ respctively (e.g. GTp or GTa). See the R-scape manual for details."
  type: boolean
  inputBinding:
    prefix: --statistic
- id: no_figures
  doc: Turn off production of graphical R-scape output
  type: boolean
  inputBinding:
    prefix: --nofigures
- id: log
  doc: Specify log file; output is written to STDOUT unless specified
  type: boolean
  inputBinding:
    prefix: --log
outputs: []
cwlVersion: v1.1
baseCommand:
- eval_alignment.pl
