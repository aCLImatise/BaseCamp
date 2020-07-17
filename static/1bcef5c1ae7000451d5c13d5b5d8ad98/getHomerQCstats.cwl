class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/getHomerQCstats.pl.cwl
inputs:
- id: mapping_tag_directors
  doc: (mapping between tag directors and alignment files)
  type: string
  inputBinding:
    prefix: -k
- id: tag_directories_stats
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
