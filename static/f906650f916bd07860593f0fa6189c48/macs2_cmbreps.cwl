class: CommandLineTool
id: macs2_cmbreps.cwl
inputs:
- id: i
  doc: MACS score in bedGraph for each replicate. Require at least 2 files such as
    '-i A B C D'. REQUIRED
  type: string[]
  inputBinding:
    prefix: -i
- id: method
  doc: "Method to use while combining scores from replicates. 1) fisher: Fisher's\
    \ combined probability test. It requires scores in ppois form (-log10 pvalues)\
    \ from bdgcmp. Other types of scores for this method may cause cmbreps unexpected\
    \ errors. 2) max: take the maximum value from replicates for each genomic position.\
    \ 3) mean: take the average value. Note, except for Fisher's method, max or mean\
    \ will take scores AS IS which means they won't convert scores from log scale\
    \ to linear scale or vice versa."
  type: string
  inputBinding:
    prefix: --method
- id: outdir
  doc: 'If specified all output files will be written to that directory. Default:
    the current working directory'
  type: string
  inputBinding:
    prefix: --outdir
- id: ofile
  doc: Output BEDGraph filename for combined scores.
  type: string
  inputBinding:
    prefix: --ofile
outputs: []
cwlVersion: v1.1
baseCommand:
- macs2
- cmbreps
