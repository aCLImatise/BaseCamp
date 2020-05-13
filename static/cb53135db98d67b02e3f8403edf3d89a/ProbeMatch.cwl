class: CommandLineTool
id: ProbeMatch.cwl
inputs:
- id: max_dist
  doc: Give a max distance
  type: string
  inputBinding:
    prefix: --maxDist
- id: outfile
  doc: Write output to a file
  type: string
  inputBinding:
    prefix: --outFile
outputs: []
cwlVersion: v1.1
baseCommand:
- ProbeMatch
