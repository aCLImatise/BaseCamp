class: CommandLineTool
id: repair.cwl
inputs:
- id: i
  doc: Name of input file. BAM format by default.
  type: string
  inputBinding:
    prefix: -i
- id: o
  doc: Name of output file. The output file is in BAM format.
  type: string
  inputBinding:
    prefix: -o
- id: s
  doc: The input file is in SAM format.
  type: boolean
  inputBinding:
    prefix: -S
- id: c
  doc: Compress the output BAM file. This will reduce the size of BAM file, but will
    increase the time of retrieving reads from BAM file.
  type: boolean
  inputBinding:
    prefix: -c
- id: t
  doc: Number of CPU threads. 8 by default.
  type: long
  inputBinding:
    prefix: -T
- id: d
  doc: Do not add dummy reads for singleton reads.
  type: boolean
  inputBinding:
    prefix: -d
- id: t
  doc: Do not include sequences and quality scores of reads in the output file.
  type: boolean
  inputBinding:
    prefix: -t
outputs: []
cwlVersion: v1.1
baseCommand:
- repair
