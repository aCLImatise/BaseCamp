class: CommandLineTool
id: capClocation2fragment.cwl
inputs:
- id: r
  doc: restfragfile    filename for bed file containing the list of restriction fragments
  type: boolean
  inputBinding:
    prefix: -r
- id: o
  doc: outfile         filename for output bed file (if not present output with be
    sent to stdout)
  type: boolean
  inputBinding:
    prefix: -o
- id: i
  doc: inputfile       filename for bed file containing genomic locations
  type: boolean
  inputBinding:
    prefix: -i
- id: l
  doc: 'location        is a single genomic location in format chr1:1234-5678 '
  type: boolean
  inputBinding:
    prefix: -l
outputs: []
cwlVersion: v1.1
baseCommand:
- capClocation2fragment
