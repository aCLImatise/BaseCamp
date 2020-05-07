class: CommandLineTool
id: dumpFeatures.cwl
inputs:
- id: i
  doc: report contig iids instead of eids
  type: boolean
  inputBinding:
    prefix: -i
- id: u
  doc: report ungapped coordinates instread of gapped coordinates
  type: boolean
  inputBinding:
    prefix: -u
- id: g
  doc: report features in .gff format
  type: boolean
  inputBinding:
    prefix: -g
outputs: []
cwlVersion: v1.1
baseCommand:
- dumpFeatures
