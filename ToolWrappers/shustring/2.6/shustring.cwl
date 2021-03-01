class: CommandLineTool
id: shustring.cwl
inputs:
- id: in_general
  doc: "[-q quiet - do not print shustrings; default: print shustrings]\n[-n nucleotide\
    \ sequence (DNA); default: arbitrary ASCII strings]\n[-r include reverse complement\
    \ (implies -n); default: only forward strand]\n[-u preserve IUPAC nomenclature\
    \ in nucleotide sequences; default: convert to ACGT]\n[-p print information about\
    \ program]\n[-h print this help message]\n"
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- shustring
