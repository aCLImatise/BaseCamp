class: CommandLineTool
id: BaitFilter.cwl
inputs:
- id: bait_filter
  doc: -i <string> [-o <string>] [-c <string>] [-m <string>] [--blast-second-hit-evalue
    <floating point number>] [--blast-first-hit-evalue <floating point number>] [--blast-min-hit-coverage-of-baits-in-tiling-stack
    <floating point number>] [--ref-blast-db <string>] [--blast-extra-commandline
    <string>] [--blast-evalue-cutoff <floating point number>] [-B <string>] [-t <positive
    integer>] [--ID-prefix <string>] [--verbosity <unsigned integer>] [-S] [--] [--version]
    [-h]
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- BaitFilter
