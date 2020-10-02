class: CommandLineTool
id: formcon.cwl
inputs:
- id: in_file_of_reads
  doc: file of DNA reads in FASTA format
  type: string
  inputBinding:
    position: 0
- id: in_min_distance
  doc: minimum length in bp of subclones
  type: string
  inputBinding:
    position: 1
- id: in_max_distance
  doc: maximum length in bp of subclones
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- formcon
