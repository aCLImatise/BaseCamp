class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/BaitFilter.cwl
inputs:
- id: i
  doc: ''
  type: string
  inputBinding:
    prefix: -i
- id: o
  doc: ''
  type: string
  inputBinding:
    prefix: -o
- id: c
  doc: ''
  type: string
  inputBinding:
    prefix: -c
- id: m
  doc: ''
  type: string
  inputBinding:
    prefix: -m
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
