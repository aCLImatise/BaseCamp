class: CommandLineTool
id: getHomerQCstats.pl.cwl
inputs:
- id: k
  doc: (mapping between tag directors and alignment files)
  type: string
  inputBinding:
    prefix: -k
- id: d
  doc: '[tagDir2] ... (tag directories to get stats from)'
  type: string
  inputBinding:
    prefix: -d
- id: chr
  doc: '[chr2] ... (print tags for these chromosomes)'
  type: string
  inputBinding:
    prefix: -chr
- id: sam
  doc: '[f2.sam] ... (alignment files, will look for *log files)'
  type: string
  inputBinding:
    prefix: -sam
outputs: []
cwlVersion: v1.1
baseCommand:
- getHomerQCstats.pl
