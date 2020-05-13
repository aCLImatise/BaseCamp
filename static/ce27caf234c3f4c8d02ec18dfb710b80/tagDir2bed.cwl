class: CommandLineTool
id: tagDir2bed.pl.cwl
inputs:
- id: len
  doc: '<#> (read length to report, default: given sizes in tags.tsv file)'
  type: boolean
  inputBinding:
    prefix: -len
- id: separate
  doc: (report separate BED reads if there are multiple reads per position)
  type: boolean
  inputBinding:
    prefix: -separate
outputs: []
cwlVersion: v1.1
baseCommand:
- tagDir2bed.pl
