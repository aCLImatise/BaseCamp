class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/windowMaker.cwl
inputs:
- id: genome_file_size
  doc: Genome file size (see notes below). Windows will be created for each chromosome
    in the file.
  type: string
  inputBinding:
    prefix: -g
- id: bed_file_fields
  doc: BED file (with chrom,start,end fields). Windows will be created for each interval
    in the file.
  type: string
  inputBinding:
    prefix: -b
- id: divide_interval_fixedsized
  doc: Divide each input interval (either a chromosome or a BED interval) to fixed-sized
    windows (i.e. same number of nucleotide in each window). Can be combined with
    -s <step_size>
  type: string
  inputBinding:
    prefix: -w
- id: step_size_pairs
  doc: 'Step size: i.e., how many base pairs to step before creating a new window.
    Used to create "sliding" windows. - Defaults to window size (non-sliding windows).'
  type: string
  inputBinding:
    prefix: -s
- id: divide_interval_fixed
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
- id: winnumsrcwinnum_default_output
  doc: "|winnum|srcwinnum The default output is 3 columns: chrom, start, end . With\
    \ this option, a name column will be added. \"-i src\" - use the source interval's\
    \ name. \"-i winnum\" - use the window number as the ID (e.g. 1,2,3,4...). \"\
    -i srcwinnum\" - use the source interval's name with the window number. See below\
    \ for usage examples."
  type: string
  inputBinding:
    prefix: -i
- id: bed_tools
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: make_windows
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: or
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- windowMaker
