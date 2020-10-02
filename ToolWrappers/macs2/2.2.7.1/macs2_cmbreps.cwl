class: CommandLineTool
id: macs2_cmbreps.cwl
inputs:
- id: in_macs_score_bedgraph
  doc: "MACS score in bedGraph for each replicate. Require at\nleast 2 files such\
    \ as '-i A B C D'. REQUIRED"
  type: File[]
  inputBinding:
    prefix: -i
- id: in_method
  doc: "Method to use while combining scores from replicates.\n1) fisher: Fisher's\
    \ combined probability test. It\nrequires scores in ppois form (-log10 pvalues)\
    \ from\nbdgcmp. Other types of scores for this method may\ncause cmbreps unexpected\
    \ errors. 2) max: take the\nmaximum value from replicates for each genomic\nposition.\
    \ 3) mean: take the average value. Note,\nexcept for Fisher's method, max or mean\
    \ will take\nscores AS IS which means they won't convert scores\nfrom log scale\
    \ to linear scale or vice versa."
  type: string
  inputBinding:
    prefix: --method
- id: in_outdir
  doc: "If specified all output files will be written to that\ndirectory. Default:\
    \ the current working directory"
  type: Directory
  inputBinding:
    prefix: --outdir
- id: in_ofile
  doc: "Output BEDGraph filename for combined scores.\n"
  type: File
  inputBinding:
    prefix: --ofile
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outdir
  doc: "If specified all output files will be written to that\ndirectory. Default:\
    \ the current working directory"
  type: Directory
  outputBinding:
    glob: $(inputs.in_outdir)
- id: out_ofile
  doc: "Output BEDGraph filename for combined scores.\n"
  type: File
  outputBinding:
    glob: $(inputs.in_ofile)
cwlVersion: v1.1
baseCommand:
- macs2
- cmbreps
