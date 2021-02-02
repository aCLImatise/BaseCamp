class: CommandLineTool
id: removeRedundantPeaks.pl.cwl
inputs:
- id: in_palindromic
  doc: "(will remove peaks that overlap >50% and are on separate strands,\nthat are\
    \ likely representative of palindromic motif recognition)"
  type: boolean
  inputBinding:
    prefix: -palindromic
- id: in_blat
  doc: "<#> (Where % is the percentage match to be considered redundant, default=0.33)\n\
    -size <#> (size of peaks to be used for sequence similarity, default=given)\n\
    -genome <directory of FASTA files> (genome for extracting sequence)\n-mask (use\
    \ repeat masked sequence)\n-ignoreStrand\n"
  type: boolean
  inputBinding:
    prefix: -blat
- id: in_peak_file
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- removeRedundantPeaks.pl
