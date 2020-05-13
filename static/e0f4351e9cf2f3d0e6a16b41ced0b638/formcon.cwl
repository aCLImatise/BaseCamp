class: CommandLineTool
id: formcon.cwl
inputs:
- id: file_of_reads
  doc: file of DNA reads in FASTA format
  type: File
  inputBinding:
    position: 0
- id: min_distance
  doc: minimum length in bp of subclones
  type: long
  inputBinding:
    position: 1
- id: max_distance
  doc: maximum length in bp of subclones
  type: long
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- formcon
