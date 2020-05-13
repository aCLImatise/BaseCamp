class: CommandLineTool
id: run_MaxBin.pl.cwl
inputs:
- id: contig
  doc: (contig file)
  type: boolean
  inputBinding:
    prefix: -contig
- id: out
  doc: (output file)
  type: boolean
  inputBinding:
    prefix: -out
outputs: []
cwlVersion: v1.1
baseCommand:
- run_MaxBin.pl
