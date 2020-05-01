#!/usr/bin/env cwl-runner

baseCommand:
- windowMaker
class: CommandLineTool
cwlVersion: v1.0
id: windowmaker
inputs:
- doc: '4262'
  id: chr18_gl000207_random
  inputBinding:
    position: 0
  type: string
- doc: Genome file size (see notes below). Windows will be created for each chromosome
    in the file.
  id: g
  inputBinding:
    prefix: -g
  type: string
- doc: BED file (with chrom,start,end fields). Windows will be created for each interval
    in the file.
  id: b
  inputBinding:
    prefix: -b
  type: string
- doc: Divide each input interval (either a chromosome or a BED interval) to fixed-sized
    windows (i.e. same number of nucleotide in each window). Can be combined with
    -s <step_size>
  id: w
  inputBinding:
    prefix: -w
  type: string
- doc: 'Step size: i.e., how many base pairs to step before creating a new window.
    Used to create "sliding" windows. - Defaults to window size (non-sliding windows).'
  id: s
  inputBinding:
    prefix: -s
  type: string
- doc: Divide each input interval (either a chromosome or a BED interval) to fixed
    number of windows (i.e. same number of windows, with varying window sizes).
  id: n
  inputBinding:
    prefix: -n
  type: string
- doc: Reverse numbering of windows in the output, i.e. report  windows in decreasing
    order
  id: reverse
  inputBinding:
    prefix: -reverse
  type: boolean
- doc: "|winnum|srcwinnum The default output is 3 columns: chrom, start, end . With\
    \ this option, a name column will be added. \"-i src\" - use the source interval's\
    \ name. \"-i winnum\" - use the window number as the ID (e.g. 1,2,3,4...). \"\
    -i srcwinnum\" - use the source interval's name with the window number. See below\
    \ for usage examples."
  id: i
  inputBinding:
    prefix: -i
  type: string
