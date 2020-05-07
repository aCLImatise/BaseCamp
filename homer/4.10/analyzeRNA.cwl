class: CommandLineTool
id: analyzeRNA.pl.cwl
inputs:
- id: or
  doc: ': analyzeRNA.pl <custom RNA/GTF file> <organism|none>  [additional options...]'
  type: boolean
  inputBinding:
    prefix: -or-
outputs: []
cwlVersion: v1.1
baseCommand:
- analyzeRNA.pl
