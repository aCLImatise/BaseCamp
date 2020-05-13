class: CommandLineTool
id: shustring.cwl
inputs:
- id: general
  doc: '[-q quiet - do not print shustrings; default: print shustrings] [-n nucleotide
    sequence (DNA); default: arbitrary ASCII strings] [-r include reverse complement
    (implies -n); default: only forward strand] [-u preserve IUPAC nomenclature in
    nucleotide sequences; default: convert to ACGT] [-p print information about program]
    [-h print this help message]'
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- shustring
