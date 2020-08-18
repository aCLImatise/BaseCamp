class: CommandLineTool
id: ../../../gtf2bed.pl.cwl
inputs:
- id: item_rgb
  doc: a string s encoding the RGB value of the form R,G,B (default 0,0,225).
  type: string
  inputBinding:
    prefix: --itemRgb
- id: include_stop_in_cds
  doc: include stop codon into the coding sequence (default off)
  type: boolean
  inputBinding:
    prefix: --includeStopInCDS
outputs: []
cwlVersion: v1.1
baseCommand:
- gtf2bed.pl
