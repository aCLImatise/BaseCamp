class: CommandLineTool
id: BlastAlign.cwl
inputs:
- id: must
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: have
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: blast_align
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: m
  doc: <maximum percentage of gaps allowed in any one sequence in the final alignment>
    Optional but we find 0.5 the most useful; default = 95, i.e. only removing sequences
    with extremely short matches
  type: boolean
  inputBinding:
    prefix: -m
- id: r
  doc: <name of reference sequence> Optional; default is to search for best candidate
    (if entered, the sequence will be extracted, written to a separate file, and blasted
    against the original input file)
  type: boolean
  inputBinding:
    prefix: -r
- id: x
  doc: <names of comma-separated sequences to be excluded from this analysis> Optional
  type: boolean
  inputBinding:
    prefix: -x
- id: n
  doc: <T/F> Retain original names in output files T(rue)/F(alse). Optional (default
    = T;) option F is to output the 15 character name abbreviations (stripped of potentially
    problematic characters) that is used in the program
  type: boolean
  inputBinding:
    prefix: -n
- id: s
  doc: <Number of sequences to be used in initial search for reference sequence> Optional;
    default is to find the reference sequence by blasting all sequences against all
    sequences, only randomly subsampling when it thinks the blast output file might
    be too large (-s over-rides this)
  type: boolean
  inputBinding:
    prefix: -s
outputs: []
cwlVersion: v1.1
baseCommand:
- BlastAlign
