class: CommandLineTool
id: MTBseq.cwl
inputs:
- id: in_check
  doc: Check the dependencies of MTBseq
  type: boolean?
  inputBinding:
    prefix: --check
- id: in_step
  doc: "<ESSENTIAL> This is an essential option! Choose your pipeline step as a parameter!\n\
    TBfull      Full workflow\nTBbwa       Read mapping\nTBrefine    Refinement of\
    \ mapping(s)\nTBpile      Creation of mpileup file(s)\nTBlist      Creation of\
    \ position list(s)\nTBvariants  Calling variants\nTBstats     Statisitcs of mapping(s)\
    \ and variant calling(s)\nTBstrains   Calling lineage from sample(s)\nTBjoin \
    \     Joint variant analysis from defined samples\nTBamend     Amending joint\
    \ variant table(s)\nTBgroups    Detecting groups of samples"
  type: boolean?
  inputBinding:
    prefix: --step
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- MTBseq
