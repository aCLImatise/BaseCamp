class: CommandLineTool
id: TOBIAS_ScoreBed.cwl
inputs:
- id: bed
  doc: Sites to score (.bed file)
  type: boolean
  inputBinding:
    prefix: --bed
- id: bigwigs
  doc: '[ [ ...]]  Scores to assign to regions in .bed (.bw file(s))'
  type: boolean
  inputBinding:
    prefix: --bigwigs
- id: output
  doc: 'Path to output .bed-file (default: scored sites are written to stdout)'
  type: boolean
  inputBinding:
    prefix: --output
- id: subset
  doc: 'Subset scoring to .bed regions and set all other sites to --null value (default:
    all sites in input file will be scored)'
  type: boolean
  inputBinding:
    prefix: --subset
- id: 'null'
  doc: 'If --subset is given, which score/label to add to non-scored regions (default:
    0)'
  type: boolean
  inputBinding:
    prefix: --null
- id: position
  doc: 'Position in sites to score (start/mid/end/full) (default: full)'
  type: boolean
  inputBinding:
    prefix: --position
- id: math
  doc: 'If position == full, choose math to perform on signal (min/max/mean/sum) (default:
    mean)'
  type: boolean
  inputBinding:
    prefix: --math
- id: verbosity
  doc: 'Level of output logging (0: silent, 1: errors/warnings, 2: info, 3: stats,
    4: debug, 5: spam) (default: 3)'
  type: long
  inputBinding:
    prefix: --verbosity
outputs: []
cwlVersion: v1.1
baseCommand:
- TOBIAS
- ScoreBed
