class: CommandLineTool
id: gtf2bed.pl.cwl
inputs:
- id: in_item_rgb
  doc: a string s encoding the RGB value of the form R,G,B (default 0,0,225).
  type: string
  inputBinding:
    prefix: --itemRgb
- id: in_include_stop_in_cds
  doc: include stop codon into the coding sequence (default off)
  type: boolean
  inputBinding:
    prefix: --includeStopInCDS
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- gtf2bed.pl
