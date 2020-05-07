class: CommandLineTool
id: qualityScores.cwl
inputs:
- id: i
  doc: Name of input file including read data. The default format is Fastq.
  type: string
  inputBinding:
    prefix: -i
- id: o
  doc: Name of output file that is a text file including Phred scores for each read
    base.
  type: string
  inputBinding:
    prefix: -o
- id: phred_offset
  doc: <33|64> refer to subread aligner.
  type: boolean
  inputBinding:
    prefix: --phred-offset
outputs: []
cwlVersion: v1.1
baseCommand:
- qualityScores
