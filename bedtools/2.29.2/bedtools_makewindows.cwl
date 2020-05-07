class: CommandLineTool
id: bedtools_makewindows.cwl
inputs:
- id: chr18_gl000207_random
  doc: '4262'
  type: string
  inputBinding:
    position: 0
- id: g
  doc: Genome file size (see notes below). Windows will be created for each chromosome
    in the file.
  type: string
  inputBinding:
    prefix: -g
- id: b
  doc: BED file (with chrom,start,end fields). Windows will be created for each interval
    in the file.
  type: string
  inputBinding:
    prefix: -b
- id: w
  doc: Divide each input interval (either a chromosome or a BED interval) to fixed-sized
    windows (i.e. same number of nucleotide in each window). Can be combined with
    -s <step_size>
  type: string
  inputBinding:
    prefix: -w
- id: s
  doc: 'Step size: i.e., how many base pairs to step before creating a new window.
    Used to create "sliding" windows. - Defaults to window size (non-sliding windows).'
  type: string
  inputBinding:
    prefix: -s
- id: n
  doc: Divide each input interval (either a chromosome or a BED interval) to fixed
    number of windows (i.e. same number of windows, with varying window sizes).
  type: string
  inputBinding:
    prefix: -n
- id: reverse
  doc: Reverse numbering of windows in the output, i.e. report  windows in decreasing
    order
  type: boolean
  inputBinding:
    prefix: -reverse
- id: i
  doc: "|winnum|srcwinnum The default output is 3 columns: chrom, start, end . With\
    \ this option, a name column will be added. \"-i src\" - use the source interval's\
    \ name. \"-i winnum\" - use the window number as the ID (e.g. 1,2,3,4...). \"\
    -i srcwinnum\" - use the source interval's name with the window number. See below\
    \ for usage examples."
  type: string
  inputBinding:
    prefix: -i
outputs: []
cwlVersion: v1.1
baseCommand:
- bedtools
- makewindows
